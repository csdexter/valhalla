load("@rules_cc//cc:cc_binary.bzl", "cc_binary")
load("@rules_cc//cc:cc_library.bzl", "cc_library")
load("@rules_cc//cc:cc_test.bzl", "cc_test")

cc_binary(
    name = "modbus_client",
    srcs = ["modbus_client.cpp"],
    linkopts = [
        "-lgflags",
        "-lglog",
        "-lmodbus",
    ],
)

cc_binary(
    name = "modbus_server",
    srcs = ["modbus_server.cpp"],
    linkopts = [
        "-lgflags",
        "-lglog",
        "-lmodbus",
    ],
)

cc_library(
    name = "TPConfiguration",
    srcs = [
        "TPConfiguration.hpp",
        "TPConfiguration.impl.hpp",
    ],
)

cc_test(
    name = "test_TPConfiguration",
    deps = [
        ":TPConfiguration",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
    size="small",
)

cc_library(
    name = "ColoredThreadPool",
    srcs = [
        "ColoredThreadPool.hpp",
        "ColoredThreadPool.impl.hpp",
    ],
)
