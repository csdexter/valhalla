/* Colored Thread Pool implementation
 * Copyright(C) 2026 Radu - Eosif Mihăilescu <eu@radu-mihailescu.nom.ro>
 * BSD 3-clause license */

#ifndef COLOREDTHREADPOOL_HPP_
#define COLOREDTHREADPOOL_HPP_

#include <atomic>
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

template <typename S, typename C>
class TColoredThreadPool {
public:
  typedef std::function<void(TWorkItem *)> TWorker;

  TColoredThreadPool(void) = delete;
  explicit TColoredThreadPool(const ITPConfigurationProvider<S, C> &config);
  virtual ~TColoredThreadPool(void) { this->stop(); };
  virtual void register_worker(const C &color, const TWorker &worker);
  virtual void start(void);
  virtual std::future<void> submit_work(
      const S &source, const C &color, TWorkItem *work,
      std::size_t priority = std::numeric_limits<size_t>::max());
  virtual void stop(void);
private:
  typedef struct {
    C color;
    TWorkItem *work;
    std::size_t priority;
    std::promise<void> signal;
    typename TTPConfiguration<S, C>::TWorkItemKey quota_key;
  } TWorkTuple;
  typedef std::queue<TWorkTuple> TWorkQueue;

  std::atomic<bool> running_;
  std::mutex state_mutex_;
  const TTPConfiguration<S, C> &config_;
  // Work item color to executor mapping.
  std::unordered_map<C, TWorker> workers_;
  // Work item key to (remaining) concurrency quota mapping.
  std::unordered_map<
        typename TTPConfiguration<S, C>::TWorkItemKey,
        typename TTPConfiguration<S, C>::TQuotaValue,
        boost::hash<typename TTPConfiguration<S, C>::TWorkItemKey>> quota_;
  std::unordered_map<
        typename TTPConfiguration<S, C>::TPoolKey, std::mutex,
        boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> quota_mutexes_;
  std::unordered_map<
        typename TTPConfiguration<S, C>::TPoolKey, std::condition_variable,
        boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> quota_signals_;
  std::unordered_map<std::size_t, std::size_t> pool_sizes_;
  std::unordered_map<
      typename TTPConfiguration<S, C>::TPoolKey, std::vector<std::thread>,
      boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> pools_;
  std::unordered_map<
      typename TTPConfiguration<S, C>::TPoolKey, TWorkQueue,
      boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> queues_;
  std::unordered_map<
      typename TTPConfiguration<S, C>::TPoolKey, std::mutex,
      boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> queue_mutexes_;
  std::unordered_map<
      typename TTPConfiguration<S, C>::TPoolKey, std::condition_variable,
      boost::hash<typename TTPConfiguration<S, C>::TPoolKey>> queue_signals_;

  void pool_enumerator(std::size_t index, std::size_t size);
  void dispatch_worker(
      TWorkQueue &queue, std::mutex &mutex, std::condition_variable &signal);
};

class EColoredThreadPool : public std::runtime_error {
  using std::runtime_error::runtime_error;
};
class ECUnfinalizedConfiguration : public EColoredThreadPool {
  using EColoredThreadPool::EColoredThreadPool;
};

} // compute
} // cancer

#include "ColoredThreadPool.impl.hpp"

#endif // COLOREDTHREADPOOL_HPP_
