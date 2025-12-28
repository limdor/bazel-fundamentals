"""
Dependency to bazel rules for Python language
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def load_rules_python():
    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "5fa3c738d33acca3b97622a13a741129f67ef43f5fdfcec63b29374cc0574c29",
        strip_prefix = "rules_python-0.9.0",
        url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.9.0.tar.gz",
    )
