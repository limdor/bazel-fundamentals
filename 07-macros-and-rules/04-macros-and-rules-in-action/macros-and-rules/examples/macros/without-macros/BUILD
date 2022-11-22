cc_library(
    name = "my_lib",
    srcs = ["my_lib.cpp"],
    hdrs = ["my_lib.h"],
)

cc_library(
    name = "my_other_lib",
    srcs = ["my_other_lib.cpp"],
    hdrs = ["my_other_lib.h"],
)

cc_test(
    name = "my_lib_test",
    srcs = ["my_lib_test.cpp"],
    deps = [
        ":my_lib",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)

cc_test(
    name = "my_other_lib_test",
    srcs = ["my_other_lib_test.cpp"],
    deps = [
        ":my_other_lib",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
