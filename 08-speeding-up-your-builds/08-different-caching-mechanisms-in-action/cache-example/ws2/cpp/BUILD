cc_binary(
    name = "hello_world",
    srcs = ["hello_world.cpp"],
    deps = [":my_lib"],
)

cc_library(
    name = "my_lib",
    srcs = ["my_lib.cpp"],
    hdrs = ["my_lib.h"],
)

cc_test(
    name = "test",
    srcs = ["my_lib_test.cpp"],
    deps = [
        ":my_lib",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
