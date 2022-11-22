load("//macros:cpp_testing.bzl", "cc_google_test")

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

cc_google_test(
    name = "my_lib_test",
    srcs = ["my_lib_test.cpp"],
    deps = [":my_lib"],
)

cc_google_test(
    name = "my_other_lib_test",
    srcs = ["my_other_lib_test.cpp"],
    deps = [":my_other_lib"],
)
