cc_binary(
    name = "hello_world",
    srcs = ["hello_world.cpp"],
    deps = [":sum_lib"],
)

cc_library(
    name = "sum_lib",
    srcs = select({
        "//configs:rounding_config": ["sum_rounding_lib.cpp"],
        "//configs:accurate_config": ["sum_lib.cpp"],
        # you can use //conditions:default in case none of the above matches
        # "//conditions:default": [],
    }),
    hdrs = ["sum_lib.h"],
)

cc_test(
    name = "test",
    srcs = select({
        "//configs:rounding_config": ["sum_rounding_lib_test.cpp"],
        "//configs:accurate_config": ["sum_lib_test.cpp"],
        # you can use //conditions:default in case none of the above matches
        # "//conditions:default": [],
    }),
    deps = [
        ":sum_lib",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
