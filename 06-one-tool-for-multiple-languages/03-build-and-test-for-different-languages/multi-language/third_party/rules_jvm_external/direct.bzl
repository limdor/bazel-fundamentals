"""
Dependency to bazel rules to resolve, fetch and export Maven artifacts
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_rules_jvm_externals():
    maybe(
        http_archive,
        name = "rules_jvm_external",
        strip_prefix = "rules_jvm_external-4.2",
        sha256 = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/4.2.zip",
    )
