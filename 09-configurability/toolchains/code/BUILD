cc_library(
    name = "sum",
    srcs = ["sum.cpp"],
    hdrs = ["sum.h"],
    target_compatible_with = [
        "@platforms//os:windows",
    ],
)

cc_library(
    name = "sum_rounding",
    srcs = ["sum_rounding.cpp"],
    hdrs = ["sum_rounding.h"],
    target_compatible_with = [
        "@platforms//os:linux",
    ],
)

cc_test(
    name = "sum_test",
    srcs = ["sum_test.cpp"],
    deps = [
        ":sum",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)

cc_test(
    name = "sum_rounding_test",
    srcs = ["sum_rounding_test.cpp"],
    deps = [
        ":sum_rounding",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
