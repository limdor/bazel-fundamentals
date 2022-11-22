"""
Transitive dependencies for bazel rules to resolve, fetch and export Maven artifacts
"""

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

def load_rules_jvm_external_transitive_dependencies():
    rules_jvm_external_deps()
