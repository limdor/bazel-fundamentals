cc_library(
    name = "my_lib",
    srcs = ["my_lib.cpp"],
    hdrs = ["my_lib.h"],
)

cc_binary(
    name = "hello_world",
    srcs = ["hello_world.cpp"],
    deps = [":my_lib"],
)

cc_test(
    name = "gtest_test",
    srcs = ["gtest_test.cpp"],
    deps = [
        ":my_lib",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
