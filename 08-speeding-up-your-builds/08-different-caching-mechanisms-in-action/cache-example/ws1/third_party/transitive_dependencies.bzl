"""
File to load the dependencies of the dependencies
"""

load("//third_party/gtest:transitive.bzl", "load_gtest_transitive_dependencies")

def load_transitive_dependencies():
    """Load the transitive dependencies of only our direct dependencies"""
    load_gtest_transitive_dependencies()
