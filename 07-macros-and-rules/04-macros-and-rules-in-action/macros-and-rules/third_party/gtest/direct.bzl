"""
Dependency to google test
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_gtest():
    maybe(
        name = "googletest",
        repo_rule = http_archive,
        sha256 = "81964fe578e9bd7c94dfdb09c8e4d6e6759e19967e397dbea48d1c10e45d0df2",
        strip_prefix = "googletest-release-1.12.1",
        urls = ["https://github.com/google/googletest/archive/refs/tags/release-1.12.1.tar.gz"],
    )
