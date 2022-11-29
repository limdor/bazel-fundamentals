"""
Dependency to goolge RE2
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_re2():
    maybe(
        name = "com_googlesource_code_re2",
        repo_rule = http_archive,
        sha256 = "0a890c2aa0bb05b2ce906a15efb520d0f5ad4c7d37b8db959c43772802991887",
        strip_prefix = "re2-a427f10b9fb4622dd6d8643032600aa1b50fbd12",
        urls = ["https://github.com/google/re2/archive/a427f10b9fb4622dd6d8643032600aa1b50fbd12.zip"],  # 2022-06-09
    )
