"""
File to load the dependencies of the dependencies
"""

load("//third_party/gtest:transitive.bzl", "load_gtest_transitive_dependencies")
load("//third_party/rules_jvm_external:transitive.bzl", "load_rules_jvm_external_transitive_dependencies")
load("//third_party/rules_python:transitive.bzl", "load_rules_python_transitive_dependencies")

def load_transitive_dependencies():
    """Load the transitive dependencies of only our direct dependencies"""
    load_gtest_transitive_dependencies()
    load_rules_jvm_external_transitive_dependencies()
    load_rules_python_transitive_dependencies()
