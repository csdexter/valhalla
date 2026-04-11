/* For the purposes of authorship and licensing, ColoredThreadPool.hpp and
   TColoredThreadPool.impl.hpp SHALL be considered one file. They are only
   rendered as two separate files for aesthetical reasons.*/

#include <cstddef>
#if !defined(COLOREDTHREADPOOL_HPP_)
#error "Do not include ColoredThreadPool.impl.hpp directly, include ColoredThreadPool.hpp instead!"
#endif

#include <thread>

namespace cancer {
namespace compute {

template<typename S, typename C>
TColoredThreadPool<S, C>::TColoredThreadPool(
    const ITPConfigurationProvider<S, C> &config):
    running_(false), config_(config) {
  if (!config.ready()) {
    throw ECUnfinalizedConfiguration(
        "Attempted to instantiate a TColoredThreadPool passing an unfinalized "
        "configuration object!");
  };

  this->config_.get_pools([this](std::size_t index, std::size_t threads) {
    this->pool_enumerator(index, threads);
  });
};

template<typename S, typename C>
void TColoredThreadPool<S, C>::register_worker(
    const C &color, const TWorker &worker) {
  assert(!this->in_use_);

  this->workers_[color] = worker;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::start(void) {
  const std::lock_guard<std::mutex> lock(this->state_mutex_);

  assert(!this->running_.load());

  for (auto &one_pool_size : this->pool_sizes_) {
    this->pools_[one_pool_size.first].resize(one_pool_size.second);
    for (std::size_t i = 0; i < this->pools_[one_pool_size.first].size(); i++) {
      this->pools_[one_pool_size.first].at(i) = std::thread(
          [this, &one_pool_size]() {
            this->dispatch_worker(this->queues_[one_pool_size.first],
                                  this->queue_mutexes_[one_pool_size.first],
                                  this->queue_signals_[one_pool_size.first]);
          });
    }
  }

  this->running_.store(true);
}

template<typename S, typename C>
std::future<void> TColoredThreadPool<S, C>::submit_work(
    const S &source, const C &color, TWorkItem *work, std::size_t priority) {
  TWorkTuple work_record = {color, work, priority};
  typename TTPConfiguration<S, C>::TPoolKey target_pool = this->config_.which_pool(source, color);

  work_record.signal.reset(new std::promise<void>);
  std::future result = work_record.signal->get_future();
  {
    std::unique_lock<std::mutex> qlock(this->queue_mutexes_[target_pool]);
    auto const &target_quota = this->config_.quota_for(source, color);
    work_record.quota_key = target_quota.first;
    {
      std::unique_lock<std::mutex> slock(this->state_mutex_);
      auto const &maybe_quota = this->quota_.find(target_quota.first);

      if (maybe_quota != this->quota_.end()) {
        // We have seen this quota allocation before and it's likely in use.
        if (!maybe_quota->second) {
          // Block and wait for quota to appear.
          // TODO(rmihailescu): implement priority using an extra queue per quota
          //                    key and a dedicated worker that implements the
          //                    "block-and-wait" below, popping from the priority
          //                    queue and pushing into the work queue. Bonus,
          //                    this makes this function non-blocking.
          std::unique_lock<std::mutex> lock(
              this->quota_mutexes_[target_quota.first]);
          this->quota_signals_[target_quota.first].wait(
              lock, [this, &target_quota]() {
                return this->quota_[target_quota.first] || !this->running_.load();
              });
          this->quota_[target_quota.first]--;
        } else {
          this->quota_[target_quota.first]--;
        }
      } else {
        // We have never seen this quota allocation before, needs initialization.
        this->quota_[target_quota.first] = target_quota.second;
      }
    }
    // Now that the quota situation is settled, submit the work for processing.
    this->queues_[target_pool].push(std::move(work_record));
  }
  this->queue_signals_[target_pool].notify_one();

  return result;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::stop(void) {
  assert(this->running_.load());

  this->running_.store(false);

  const std::lock_guard<std::mutex> lock(this->state_mutex_);

  for (auto &one_signal : this->queue_signals_) {
    one_signal.second.notify_all();
  }

  for (auto &one_pool : this->pools_) {
    for (auto &one_thread : one_pool.second) {
      one_thread.join();
    }
    one_pool.second.clear();
  }
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::pool_enumerator(
    std::size_t index, std::size_t threads) {
  this->pool_sizes_[index] = threads;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::dispatch_worker(
    TWorkQueue &queue, std::mutex &mutex, std::condition_variable &signal) {
  while (true) {
    TWorkTuple work_record;

    {
      std::unique_lock<std::mutex> lock(mutex);
      signal.wait(lock, [this, &queue]() {
        return !queue.empty() || !this->running_.load();
      });
      if (!this->running_.load()) {
        return;
      }
      work_record = std::move(queue.front());
      queue.pop();
    }

    // Perform the actual work ...
    this->workers_[work_record.color](work_record.work);
    // ... signal completion ...
    work_record.signal->set_value();
    // ... and finally replenish (return) quota.
    {
      std::unique_lock<std::mutex> lock(this->state_mutex_);
      this->quota_[work_record.quota_key]++;
    }
    this->quota_signals_[work_record.quota_key].notify_one();
    signal.notify_one();
  }
}

} // namespace compute
} // namespace cancer
