/* For the purposes of authorship and licensing, ColoredThreadPool.hpp and
   TColoredThreadPool.impl.hpp SHALL be considered one file. They are only
   rendered as two separate files for aesthetical reasons.*/

#include "ColoredThreadPool.hpp"
#include <mutex>
#if !defined(COLOREDTHREADPOOL_HPP_)
#error "Do not include ColoredThreadPool.impl.hpp directly, include ColoredThreadPool.hpp instead!"
#endif

#include <thread>

namespace cancer {
namespace compute {

template<typename S, typename C>
TColoredThreadPool<S, C>::TColoredThreadPool(
    const ITPConfigurationProvider<S, C> &config):
    started_(false), stopped_(false), config_(config) {
  if (!config.ready()) {
    throw ECUnfinalizedConfiguration(
        "Attempted to instantiate a TColoredThreadPool passing an unfinalized "
        "configuration object!");
  }

  this->config_.get_pools([this](std::size_t index, std::size_t threads) {
    this->pool_enumerator(index, threads);
  });
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::register_worker(
    const C &color,
    const typename IColoredThreadPoolController<C>::TWorker &worker) {
  if (this->started_) {
    throw ECBusy("Attempted to register a new worker for an already running "
                 "thread pool!");
  }

  if (this->workers_.count(color)) {
    throw ECInvalidConfiguration(
        "Attempted to register a second worker for the same color!");
  }
  this->workers_[color] = worker;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::start(void) {
  if (this->started_) {
    throw ECBusy("Attempted to start an already running thread pool!");
  }

  if (this->stopped_) {
      throw ECStale(
          "Attempted to start a thread pool that was previously stopped!");
  }

  this->started_ = true;
}

template<typename S, typename C>
std::future<void> TColoredThreadPool<S, C>::submit_work(
    const S &source, const C &color, TWorkItem *work, std::size_t priority) {
  if (!this->started_) {
    throw ECNotRunning("Attempted to submit a work item to a not yet started "
                       "thread pool!");
  }

  if (this->stopped_) {
    throw ECStale("Attempted to submit a work item to an already stopped "
                  "thread pool!");
  }

  std::size_t target_pool;
  std::future<void> result;
  {
    const std::lock_guard<std::mutex> c_lock(this->config_mutex_);
    target_pool = this->config_.which_pool(source, color);
  }

  // Decision of whether to submit or block on (backlog or concurrency) quota here
  // (including backlog quota processing)
  {
    const std::lock_guard<std::mutex> q_lock(
        this->pools_[target_pool].work_mutex);
    auto &priority_queue = this->pools_[target_pool].priority_queue[source];
    auto boundary_point = priority_queue.upper_bound(priority);
    typename TWorkQueue::iterator insertion_point;

    if (boundary_point != priority_queue.end()) {
      insertion_point = this->pools_[target_pool].work_queue.emplace(
            boundary_point->second.front(), {});
    } else {
      this->pools_[target_pool].work_queue.emplace_back({});
      insertion_point = std::prev(this->pools_[target_pool].work_queue.end());
    }

    insertion_point->item = work;
    insertion_point->source = source;
    insertion_point->priority = priority;
    result = insertion_point->promise.get_future();
    {
      const std::lock_guard<std::mutex> c_lock(this->config_mutex_);
      insertion_point->worker = &this->workers_[color];
    }

    priority_queue[priority].push_back(insertion_point);
  } // Processing of the work item potentially starts here.

  return result;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::stop(void) {
  if (!this->started_) {
    throw ECNotRunning("Attempted to stop a not yet started thread pool!");
  }

  if (this->stopped_) {
    throw ECStale("Attempted to stop an already stopped thread pool!");
  }

  this->stopped_ = true;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::pool_enumerator(
    std::size_t index, std::size_t threads) {
  TPool &one_pool = this->pools_[index];
  for (std::size_t i; i < threads; i++) {
    this->pools_[index].threads.emplace_back([this, &one_pool] {
      while (true) {
        TPreparedWorkItem work = {};
        {
          const std::lock_guard<std::mutex> lock(one_pool.work_mutex);

          one_pool.work_cv.wait(lock, [this, &one_pool] {
            return this->stopped_ ||
                   (this->started_ && !one_pool.work_queue.empty());
          });

          if (this->stopped_) {
            return;
          }

          work = std::move(one_pool.work_queue.front());
          one_pool.work_queue.pop_front();

          auto &priority_queue = one_pool.priority_queue[work.source][work.priority];
          priority_queue.pop_front();
          if (priority_queue.empty()) {
            one_pool.priority_queue[work.source].erase(work.priority);
          }
        }
        /* Quota should be updated (borrowed) here. */
        work.worker(work.item);
        work.promise.set_value();
        /* Quota should be updated (returned) here. */
      }
    });
  }
}

} // namespace compute
} // namespace cancer
