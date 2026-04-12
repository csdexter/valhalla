/* Colored Thread Pool implementation
 * Copyright(C) 2026 Radu - Eosif Mihăilescu <eu@radu-mihailescu.nom.ro>
 * BSD 3-clause license */

#ifndef COLOREDTHREADPOOL_HPP_
#define COLOREDTHREADPOOL_HPP_

#include <atomic>
#include <condition_variable>
#include <cstddef>
#include <functional>
#include <future>
#include <limits>
#include <queue>
#include <thread>
#include <vector>

#include <boost/functional/hash.hpp>

#include "TPConfiguration.hpp"

namespace cancer {
namespace compute {

typedef struct {
  const void *input;
  void *output;
} TWorkItem;

template <typename C>
class IColoredThreadPoolController {
public:
  typedef std::function<void(TWorkItem *)> TWorker;

  virtual void register_worker(const C &color, const TWorker &worker) = 0;
  virtual void start(void) = 0;
  virtual void stop(void) = 0;
};

template <typename S, typename C>
class IColoredThreadPoolExecutor {
public:
  virtual std::future<void> submit_work(
      const S &source, const C &color, TWorkItem *work,
      std::size_t priority = std::numeric_limits<size_t>::max()) = 0;
};

template <typename S, typename C>
class TColoredThreadPool :
    public IColoredThreadPoolController<C>,
    public IColoredThreadPoolExecutor<S, C> {
public:
  TColoredThreadPool(void) = delete;
  explicit TColoredThreadPool(const ITPConfigurationProvider<S, C> &config);
  virtual ~TColoredThreadPool(void) { this->stop(); };
  virtual void register_worker(
      const C &color,
      const typename IColoredThreadPoolController<C>::TWorker &worker) override;
  virtual void start(void) override;
  virtual std::future<void> submit_work(
      const S &source, const C &color, TWorkItem *work,
      std::size_t priority = std::numeric_limits<size_t>::max()) override;
  virtual void stop(void) override;
private:
  typedef struct {
    TWorkItem *item;
    std::promise<void> promise;
    const typename IColoredThreadPoolController<C>::TWorker *worker;
  } TPreparedWorkItem;
  typedef struct {
    std::vector<std::thread> threads;
    std::queue<TPreparedWorkItem> work_queue;
    std::mutex work_mutex;
    std::condition_variable work_cv;
  } TPool;

  std::atomic<bool> started_;
  std::atomic<bool> stopped_;
  std::mutex config_mutex_;
  const TTPConfiguration<S, C> &config_;
  // Work item color to executor mapping.
  std::unordered_map<
      C, typename IColoredThreadPoolController<C>::TWorker> workers_;
  // Pool index (as returned by ITPConfigurationProvider::get_pools) to worker
  // mapping.
  std::unordered_map<std::size_t, TPool> pools_;

  void pool_enumerator(std::size_t index, std::size_t size);
};

class EColoredThreadPool : public std::runtime_error {
  using std::runtime_error::runtime_error;
};
class ECUnfinalizedConfiguration : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};
class ECInvalidConfiguration : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};
class ECBusy : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};
class ECNotRunning : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};
class ECStale : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};
} // compute
} // cancer

#include "ColoredThreadPool.impl.hpp"

#endif // COLOREDTHREADPOOL_HPP_
