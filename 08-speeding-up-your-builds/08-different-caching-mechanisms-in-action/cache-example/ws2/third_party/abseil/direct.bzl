"""
Dependency to abseil
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_abseil():
    maybe(
        name = "com_google_absl",
        repo_rule = http_archive,
        sha256 = "1a1745b5ee81392f5ea4371a4ca41e55d446eeaee122903b2eaffbd8a3b67a2b",
        strip_prefix = "abseil-cpp-01cc6567cff77738e416a7ddc17de2d435a780ce",
        urls = ["https://github.com/abseil/abseil-cpp/archive/01cc6567cff77738e416a7ddc17de2d435a780ce.zip"],  # 2022-06-21T19:28:27Z
    )
