/*
 * test_TPConfiguration.cpp
 *
 *  Created on: Apr 2, 2026
 *      Author: rmihailescu
 */

#include <cstdint>
#include <map>
#include <memory>
#include <optional>
#include <set>
#include <string>

#include <gtest/gtest.h>

#include "TPConfiguration.hpp"

enum TWIColor : uint8_t { kBlack = 1, kBlue, kRed };

TEST(TPConfiguration, Basic) {
  auto dut = cancer::compute::TTPConfiguration<std::string, TWIColor>();
}

TEST(TPConfiguration, Interfaces) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder = nullptr;
  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider = nullptr;

  as_builder = dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());
  as_provider = dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());

  EXPECT_TRUE(as_builder);
  EXPECT_TRUE(as_provider);

  EXPECT_EQ(as_builder, dut_ptr.get());
  EXPECT_EQ(as_provider, dut_ptr.get());
}

TEST(TPConfiguration, Empty) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  EXPECT_THROW(as_builder->build(), cancer::compute::ETInvalidConfiguration);
}

TEST(TPConfiguration, NotEmpty) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(1);

  EXPECT_NO_THROW(as_builder->build());
}

TEST(TPConfiguration, PoolAfterBuild) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(1);

  EXPECT_NO_THROW(as_builder->build());
  EXPECT_THROW(as_builder->pool(2), cancer::compute::ETBusy);
}

TEST(TPConfiguration, PoolOverwrite) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(1).pool("foo", 2).pool(kBlue, 3);

  EXPECT_THROW(as_builder->pool(2), cancer::compute::ETInvalidConfiguration);
  EXPECT_THROW(as_builder->pool("foo", 3), cancer::compute::ETInvalidConfiguration);
  EXPECT_THROW(as_builder->pool(kBlue, 4), cancer::compute::ETInvalidConfiguration);

  EXPECT_NO_THROW(as_builder->build());

}

TEST(TPConfiguration, PoolConfiguration) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(1).pool("foo", 2).pool(kBlue, 3).pool("bar", kRed, 4).pool("foo", kBlack, 5);

  EXPECT_NO_THROW(as_builder->build());
}

TEST(TPConfiguration, QuotaConfiguration) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(2).quota("foo", {std::nullopt, 1}).quota("bar", {1, std::nullopt}).quota(kRed, {1, 2}).quota("foo", kBlack, {std::nullopt, 2});

  EXPECT_NO_THROW(as_builder->build());
}

TEST(TPConfiguration, EmptyQuota) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  EXPECT_THROW(as_builder->quota("foo", {std::nullopt, std::nullopt}),
               cancer::compute::ETInvalidConfiguration);
}

TEST(TPConfiguration, QuotaAfterBuild) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(2);

  EXPECT_NO_THROW(as_builder->build());
  EXPECT_THROW(as_builder->quota("foo", {1, 2}), cancer::compute::ETBusy);
}

TEST(TPConfiguration, WastageQuotaSource) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool("foo", 2);

  EXPECT_THROW(as_builder->quota("foo", {std::nullopt, 1}),
               cancer::compute::ETWastageQuota);
}

TEST(TPConfiguration, WastageQuotaColor) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool(kRed, 2);

  EXPECT_THROW(as_builder->quota(kRed, {std::nullopt, 1}),
               cancer::compute::ETWastageQuota);
  EXPECT_THROW(as_builder->quota(kRed, {std::nullopt, 3}),
               cancer::compute::ETWastageQuota);
}

TEST(TPConfiguration, WastageQuotaSourceAndColor) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());

  as_builder->pool("foo", kBlue, 2);

  EXPECT_THROW(as_builder->quota("foo", kBlue, {std::nullopt, 1}),
               cancer::compute::ETWastageQuota);
}

TEST(TPConfiguration, NotReady) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider =
      dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());
  const cancer::compute::ITPConfigurationProvider<std::string, TWIColor>::TPoolsCB mock_cb;

  EXPECT_FALSE(as_provider->ready());
  EXPECT_THROW(as_provider->get_pools(mock_cb), cancer::compute::ETNotReady);
  EXPECT_THROW(as_provider->which_pool("foo", kBlue), cancer::compute::ETNotReady);
  EXPECT_THROW(as_provider->quota_for("foo", kBlue), cancer::compute::ETNotReady);
}

TEST(TPConfiguration, Ready) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());
  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider =
      dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());

  EXPECT_FALSE(as_provider->ready());
  as_builder->pool(1);

  EXPECT_NO_THROW(as_builder->build());
  EXPECT_TRUE(as_provider->ready());
}

TEST(TPConfiguration, PoolEnumeration) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());
  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider =
      dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());

  std::set<std::size_t> pool_sizes = {};

  as_builder->pool(42).pool("foo", 43).pool(kRed, 44);
  EXPECT_NO_THROW(as_builder->build());
  EXPECT_TRUE(as_provider->ready());
  EXPECT_NO_THROW(as_provider->get_pools(
      [&pool_sizes](std::size_t index, std::size_t threads){
          pool_sizes.insert(threads);}));
  EXPECT_EQ(pool_sizes.size(), 3);
  EXPECT_TRUE(pool_sizes.erase(42));
  EXPECT_TRUE(pool_sizes.erase(43));
  EXPECT_TRUE(pool_sizes.erase(44));
  EXPECT_TRUE(pool_sizes.empty());
}

TEST(TPConfiguration, PoolLookup) {
  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());
  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider =
      dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());

  // size -> index.
  std::map<std::size_t, std::size_t> pool_map = {};

  as_builder->pool(42).pool("foo", 43).pool(kRed, 44);
  EXPECT_NO_THROW(as_builder->build());
  EXPECT_TRUE(as_provider->ready());
  EXPECT_NO_THROW(as_provider->get_pools(
      [&pool_map](std::size_t index, std::size_t threads){
          pool_map[threads] = index;}));
  EXPECT_EQ(pool_map.size(), 3);
  EXPECT_EQ(as_provider->which_pool("bar", kBlack), pool_map[42]);
  EXPECT_EQ(as_provider->which_pool("foo", kBlack), pool_map[43]);
  EXPECT_EQ(as_provider->which_pool("bar", kRed), pool_map[44]);
  EXPECT_EQ(as_provider->which_pool("foo", kRed), pool_map[43]);
}

//TEST(TPConfiguration, QuotaLookup) {
//  std::unique_ptr<cancer::compute::TTPConfiguration<std::string, TWIColor>> dut_ptr(
//      new cancer::compute::TTPConfiguration<std::string, TWIColor>);
//  cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *as_builder =
//      dynamic_cast<cancer::compute::ITPConfigurationBuilder<std::string, TWIColor> *>(dut_ptr.get());
//  cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *as_provider =
//      dynamic_cast<cancer::compute::ITPConfigurationProvider<std::string, TWIColor> *>(dut_ptr.get());
//
//  as_builder->pool(42).quota("foo", {41, 43}).quota(kRed, {42, 44});
//  EXPECT_NO_THROW(as_builder->build());
//  EXPECT_TRUE(as_provider->ready());
//  EXPECT_EQ(as_provider->quota_for("bar", kBlack), ({0, 42}));
//  EXPECT_EQ(as_provider->quota_for("foo", kBlack), ({41, 43}));
//  EXPECT_EQ(as_provider->quota_for("bar", kRed), ({42, 44}));
//  EXPECT_EQ(as_provider->quota_for("foo", kRed), ({41, 43}));
//}