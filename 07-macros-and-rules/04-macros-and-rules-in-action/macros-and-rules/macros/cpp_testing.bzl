"""
Macros to be used for testing in C++ when using google test
"""

def cc_google_test(name, srcs, deps, visibility = None, **kwargs):
    native.cc_test(
        name = name,
        srcs = srcs,
        deps = deps + [
            "@googletest//:gtest",
            "@googletest//:gtest_main",
        ],
        visibility = visibility,
        **kwargs
    )

def cc_tested_library(name, srcs, hdrs, tests, lib_deps = None, test_deps = None, visibility = None):
    native.cc_library(
        name = name,
        srcs = srcs,
        hdrs = hdrs,
        deps = lib_deps,
        visibility = visibility,
    )

    cc_google_test(
        name = name + "_test",
        srcs = tests,
        deps = [name] + (test_deps if test_deps else []),
        visibility = ["//visibility:private"],
    )
