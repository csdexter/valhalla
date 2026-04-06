#include "TPConfiguration.hpp"
#if !defined(TPCONFIGURATION_HPP_)
#error "Do not include TPConfiguration.impl.hpp directly, include TPConfiguration.hpp instead!"
#endif

#include <array>
#include <cassert>
#include <cstddef>
#include <optional>
#include <string>
#include <unordered_set>
#include <utility>

#include <boost/functional/hash.hpp>

namespace cancer {
namespace compute {

template <typename S, typename C>
const typename ITPConfigurationProvider<S, C>::TWorkItemKey ITPConfigurationProvider<S, C>::kWildcardKey = {
    std::nullopt, std::nullopt};

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::pool(std::size_t threads) {
  return this->pool(std::nullopt, std::nullopt, threads);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::pool(
    const S &source, std::size_t threads) {
  return this->pool(source, std::nullopt, threads);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::pool(
    const C &color, std::size_t threads) {
  return this->pool(std::nullopt, color, threads);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::pool(
    const S &source, const C &color, std::size_t threads) {
  return this->pool(static_cast<std::optional<S>>(source),
                    static_cast<std::optional<C>>(color), threads);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::quota(
    const S &source,
    const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) {
  if (quota.second) {
    auto const &maybe_pool = this->pools_.find({source, std::nullopt});

    if (maybe_pool != this->pools_.end() &&
        maybe_pool->second.first != quota.second.value()) {
      throw ETWastageQuota("Attempted to set a concurrency quota of " +
                           std::to_string(quota.second.value()) + " for a "
                           "dedicated source pool of size " +
                           std::to_string(maybe_pool->second.first) + "!");
      }
  }

  return this->quota(source, std::nullopt, quota);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::quota(
    const C &color,
    const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) {
  if (quota.second) {
    auto const &maybe_pool = this->pools_.find({std::nullopt, color});

    if (maybe_pool != this->pools_.end() &&
        maybe_pool->second.first != quota.second.value()) {
      throw ETWastageQuota("Attempted to set a concurrency quota of " +
                           std::to_string(quota.second.value()) + " for a "
                           "dedicated color pool of size " +
                           std::to_string(maybe_pool->second.first) + "!");
    }
  }

  return this->quota(std::nullopt, color, quota);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::quota(
    const S &source, const C &color,
    const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) {
  if (quota.second) {
    auto const &maybe_pool = this->pools_.find({source, color});

    if (maybe_pool != this->pools_.end() &&
        maybe_pool->second.first != quota.second.value()) {
      throw ETWastageQuota("Attempted to set a concurrency quota of " +
                           std::to_string(quota.second.value()) + " for a "
                           "dedicated source and color pool of size " +
                           std::to_string(maybe_pool->second.first) + "!");
    }
  }

  return this->quota(static_cast<std::optional<S>>(source),
                     static_cast<std::optional<C>>(color), quota);
}

template <typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::build(void) {
  if (this->pools_.empty()) {
    throw ETInvalidConfiguration("No pools defined, cannot continue!");
  }

  this->postprocess_quotas();
  this->in_use_ = true;

  return *this;
}

template<typename S, typename C>
void TTPConfiguration<S, C>::get_pools(
    const typename ITPConfigurationProvider<S, C>::TPoolsCB &callback) const {
  if (!this->in_use_) {
    throw ETNotReady("Attempted to enumerate the pools of an unfinalized "
                     "thread pool configuration!");
  }

  for (const auto &one_pool : this->pools_) {
    callback(one_pool.second.second, one_pool.second.first);
  }
}

template<typename S, typename C>
std::size_t TTPConfiguration<S, C>::which_pool(
    const S &source, const C &color) const {
  if (!this->in_use_) {
    throw ETNotReady("Attempted to map a work item to a pool for an "
                     "unfinalized thread pool configuration!");
  }

  // Delegate to the hierarchical search which will also try the wildcard key
  // for us.
  auto const &maybe_result = this->hierarchical_search(
      {source, color}, this->pools_);

  if (maybe_result == this->pools_.end()) {
    throw ETInvalidConfiguration("No pool configured for given work item!");
  }

  return maybe_result->second.second;
}

template <typename S, typename C>
const typename ITPConfigurationProvider<S, C>::TQuotaMap::value_type TTPConfiguration<S, C>::quota_for(
    const S &source, const C &color) const {
  if (!this->in_use_) {
    throw ETNotReady("Attempted to query quota for a work item for an "
                     "unfinalized thread pool configuration!");
  }

  auto const &maybe_result = this->hierarchical_search(
      {source, color}, this->quotas_);
  if (maybe_result == this->quotas_.end()) {
    return {ITPConfigurationProvider<S, C>::kWildcardKey, {0, 0}};
  } else {
    return *maybe_result;
  }
}

template<typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::pool(
    const std::optional<S> &source, const std::optional<C> &color,
    std::size_t threads) {
  if (this->in_use_) {
    throw ETBusy("Attempted to add a pool definition to an already finalized "
                 "thread pool configuration!");
  }

  auto const &maybe_pool = this->pools_.find({source, color});
  if (maybe_pool != this->pools_.end()) {
    throw ETInvalidConfiguration("Attempted to redefine an existing pool!");
  }

  this->pools_[{source, color}] = {threads, this->pools_.size() + 1};

  return *this;
}

template<typename S, typename C>
TTPConfiguration<S, C> &TTPConfiguration<S, C>::quota(
    const std::optional<S> &source, const std::optional<C> &color,
    const typename ITPConfigurationBuilder<S, C>::TQuotaValue &quota) {
  if (this->in_use_) {
    throw ETBusy("Attempted to add a quota entry to an already finalized "
                 "thread pool configuration!");
  }

  if (!quota.first && !quota.second) {
    throw ETInvalidConfiguration(
        "Attempted to add an empty quota entry, at least one of the elements "
        "(backlog or concurrency) MUST be set!");
  }

  this->quotas_[{source, color}] = quota;

  return *this;
}

template <typename S, typename C>
void TTPConfiguration<S, C>::postprocess_quotas(void) {
  typename ITPConfigurationProvider<S, C>::TQuotaMap new_quotas;

  // Coerce defaulted backlog to zero backlog.
  for (auto const &quota_entry : this->quotas_) {
    if (!quota_entry.first.first.has_value()) {
      new_quotas[quota_entry.first] = {
          0, this->quotas_[quota_entry.first].second};
    } else {
      new_quotas[quota_entry.first] = this->quotas_[quota_entry.first];
    }
  }
  this->quotas_ = std::move(new_quotas);
  // new_quotas is in unspecified state after std::move, ensure clean slate.
  new_quotas.clear();

  // Coerce defaulted concurrency to resolved pool(s) size.
  for (auto const &quota_entry : this->quotas_) {
    if (!this->quotas_[quota_entry.first].second.has_value()) {
      if (quota_entry.first.first.has_value() &&
          quota_entry.first.second.has_value()) {
        // Fully specified quota key, by definition only one pool would match.
        auto const &maybe_pool = this->hierarchical_search(
            quota_entry.first, this->pools_);
        if (maybe_pool == this->pools_.end()) {
          throw ETDanglingQuota("Attempted to specify quota for work items "
                                "with no corresponding pool configured!");
        }
        new_quotas[quota_entry.first] = {
            this->quotas_[quota_entry.first].first, maybe_pool->second.first};
      } else {
        // Not fully specified quota key, we need to do an exhaustive search
        // and expand the given quota entry into multiple entries covering all
        // possible combinations.
        // The API doesn't allow adding a quota entry with a wildcard key so
        // either both members are specified or at least one of them is.
        for (auto const &one_pool : this->pools_) {
          if (quota_entry.first.first.has_value() &&
              one_pool.first.first.has_value() &&
              one_pool.first.first == quota_entry.first.first) {
            new_quotas[{quota_entry.first.first, one_pool.first.second}] = {
                this->quotas_[quota_entry.first].first, one_pool.second.first};
          } else if (quota_entry.first.second.has_value() &&
                     one_pool.first.second.has_value() &&
                     one_pool.first.second == quota_entry.first.second) {
            new_quotas[{one_pool.first.first, quota_entry.first.second}] = {
                this->quotas_[quota_entry.first].first, one_pool.second.first};
          }
        }
        for (auto const &one_pool : this->pools_) {
          if (quota_entry.first.first.has_value() &&
              !one_pool.first.first.has_value() &&
              !new_quotas.count({
                  quota_entry.first.first, one_pool.first.second})) {
            new_quotas[{quota_entry.first.first, one_pool.first.second}] = {
                this->quotas_[quota_entry.first].first, one_pool.second.first};
          } else if (quota_entry.first.second.has_value() &&
                     !one_pool.first.second.has_value() &&
                     !new_quotas.count({
                         one_pool.first.first, quota_entry.first.second})) {
            new_quotas[{one_pool.first.first, quota_entry.first.second}] = {
                this->quotas_[quota_entry.first].first, one_pool.second.first};
          }
        }
      }
    } else {
      new_quotas[quota_entry.first] = this->quotas_[quota_entry.first];
    }
  }

  this->quotas_ = std::move(new_quotas);
}

template <typename S, typename C>
template <typename M>
typename M::const_iterator TTPConfiguration<S, C>::hierarchical_search(
    const typename ITPConfigurationProvider<S, C>::TWorkItemKey &needle,
    const M &haystack) const {
  const std::array<typename ITPConfigurationProvider<S, C>::TWorkItemKey, 3> targets = {
      needle, {needle.first, std::nullopt}, {std::nullopt, needle.second}};

  // Do the hierarchical search first ...
  for (auto const &one_target : targets) {
    auto const &maybe_result = haystack.find(one_target);
    if (maybe_result != haystack.end()) {
      return maybe_result;
    }
  }

  // ... then do a last-ditch lookup of the wildcard entry.
  return haystack.find(ITPConfigurationProvider<S, C>::kWildcardKey);
}

} // namespace compute
} // namespace cancer
