/* Thread Pool Configuration implementation
 * Copyright(C) 2026 Radu - Eosif Mihăilescu <eu@radu-mihailescu.nom.ro>
 * BSD 3-clause license */

#ifndef TPCONFIGURATION_HPP_
#define TPCONFIGURATION_HPP_

#include <cstddef>
#include <functional>
#include <optional>
#include <stdexcept>
#include <unordered_map>

#include <boost/functional/hash.hpp>

namespace cancer {
namespace compute {

template <typename S, typename C>
class ITPConfigurationBuilder {
public:
  // (backlog, concurrency)
  typedef std::pair<
      std::optional<std::size_t>, std::optional<std::size_t>> TQuotaValue;

  // Pool definitions.
  virtual ITPConfigurationBuilder<S, C> &pool(std::size_t threads) = 0;
  virtual ITPConfigurationBuilder<S, C> &pool(
      const S &source, std::size_t threads) = 0;
  virtual ITPConfigurationBuilder<S, C> &pool(
      const C &color, std::size_t threads) = 0;
  virtual ITPConfigurationBuilder<S, C> &pool(
      const S &source, const C &color, std::size_t threads) = 0;
  // Quota definitions.
  virtual ITPConfigurationBuilder<S, C> &quota(
      const S &source, const TQuotaValue &quota) = 0;
  virtual ITPConfigurationBuilder<S, C> &quota(
      const C &color, const TQuotaValue &quota) = 0;
  virtual ITPConfigurationBuilder<S, C> &quota(
      const S &source, const C &color, const TQuotaValue &quota) = 0;
  // Validator and builder.
  virtual ITPConfigurationBuilder<S, C> &build(void) = 0;
protected:
  
};

template <typename S, typename C>
class ITPConfigurationProvider {
public:
  typedef std::function<void(std::size_t index, std::size_t threads)> TPoolsCB;
  typedef std::pair<std::optional<S>, std::optional<C>> TWorkItemKey;
  typedef std::unordered_map<
      TWorkItemKey, typename ITPConfigurationBuilder<S, C>::TQuotaValue,
      boost::hash<TWorkItemKey>> TQuotaMap;
  virtual bool ready(void) const = 0;
  virtual void get_pools(const TPoolsCB &callback) const = 0;
  virtual std::size_t which_pool(const S &source, const C &color) const = 0;
  virtual const typename TQuotaMap::value_type quota_for(
      const S &source, const C &color) const = 0;
protected:
  static const TWorkItemKey kWildcardKey;
};

template <typename S, typename C>
class TTPConfiguration :
    public ITPConfigurationBuilder<S, C>, public ITPConfigurationProvider<S, C> {
public:
  TTPConfiguration(void): in_use_(false), pools_({}), quotas_({}) {};
  virtual ~TTPConfiguration(void) = default;
  virtual TTPConfiguration<S, C> &pool(std::size_t threads) override;
  virtual TTPConfiguration<S, C> &pool(const S &source, std::size_t threads) override;
  virtual TTPConfiguration<S, C> &pool(const C &color, std::size_t threads) override;
  virtual TTPConfiguration<S, C> &pool(
      const S &source, const C &color, std::size_t threads) override;
  virtual TTPConfiguration<S, C> &quota(
      const S &source,
      const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) override;
  virtual TTPConfiguration<S, C> &quota(
      const C &color,
      const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) override;
  virtual TTPConfiguration<S, C> &quota(
      const S &source, const C &color,
      const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) override;
  virtual TTPConfiguration<S, C> &build(void) override;
  virtual bool ready(void) const override { return this->in_use_; }
  virtual void get_pools(
      const typename ITPConfigurationProvider<S, C>::TPoolsCB &callback) const override;
  virtual std::size_t which_pool(const S &source, const C &color) const override;
  virtual const typename ITPConfigurationProvider<S, C>::TQuotaMap::value_type quota_for(
      const S &source, const C &color) const override;
private:
  // (threads, id)
  typedef std::pair<std::size_t, std::size_t> TPoolValue;
  typedef std::unordered_map<
      typename ITPConfigurationProvider<S, C>::TWorkItemKey, TPoolValue,
      boost::hash<typename ITPConfigurationProvider<S, C>::TWorkItemKey>> TPoolMap;

  bool in_use_;
  TPoolMap pools_;
  typename ITPConfigurationProvider<S, C>::TQuotaMap quotas_;

  TTPConfiguration<S, C> &pool(
      const std::optional<S> &source, const std::optional<C> &color,
      std::size_t threads);
  TTPConfiguration<S, C> &quota(
      const std::optional<S> &source, const std::optional<C> &color,
      const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota);
  void postprocess_quotas(void);
  template <typename M>
  typename M::const_iterator hierarchical_search(
      const typename ITPConfigurationProvider<S, C>::TWorkItemKey &needle,
      const M &haystack) const;
};

class ETPConfiguration : public std::runtime_error {
  using std::runtime_error::runtime_error;
};
class ETBusy : public ETPConfiguration {
  using ETPConfiguration::ETPConfiguration;
};
class ETNotReady : public ETPConfiguration {
  using ETPConfiguration::ETPConfiguration;
};
class ETWastageQuota : public ETPConfiguration {
  using ETPConfiguration::ETPConfiguration;
};
class ETDanglingQuota : public ETPConfiguration {
  using ETPConfiguration::ETPConfiguration;
};
class ETInvalidConfiguration : public ETPConfiguration {
  using ETPConfiguration::ETPConfiguration;
};
} // namespace compute
} // namespace cancer

#include "TPConfiguration.impl.hpp"

#endif // TPCONFIGURATION_HPP_
