/* For the purposes of authorship and licensing, ColoredThreadPool.hpp and
   TColoredThreadPool.impl.hpp SHALL be considered one file. They are only
   rendered as two separate files for aesthetical reasons.*/

#include "ColoredThreadPool.hpp"
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
  if(this->started_) {
    throw ECBusy("Attempted to register a new worker for an already running "
                 "thread pool!");
  }

  this->workers_[color] = worker;
}

template<typename S, typename C>
void TColoredThreadPool<S, C>::start(void) {
  if(this->started_) {
    throw ECBusy("Attempted to start an already running thread pool!");
  }

  if(this->stopped_) {
      throw ECStale(
          "Attempted to start a thread pool that was previously stopped!");
    }

  this->started_ = true;
}

template<typename S, typename C>
std::future<void> TColoredThreadPool<S, C>::submit_work(
    const S &source, const C &color, TWorkItem *work, std::size_t priority) {
  std::size_t target_pool;
  {
    const std::lock_guard<std::mutex> lock(this->config_mutex_);
    target_pool = this->config_.which_pool(source, color);
  }

  work_record.signal.reset(new std::promise<void>);
  std::future result = work_record.signal->get_future();
  

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
            return this->stopped_ || !one_pool.work_queue.empty();
          });

          if (this->stopped_) {
            return;
          }

          work = std::move(one_pool.work_queue.front());
          one_pool.work_queue.pop();
        }
        /* Accounting should be updated (borrowed) here. */
        work.worker(work.item);
        work.promise.set_value();
        /* Accounting should be updated (returned) here. */
      }
    });
  }
}

} // namespace compute
} // namespace cancer
