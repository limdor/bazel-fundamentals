"""
File with all 3rd party dependencies needed for the project
"""

load("//third_party/abseil:direct.bzl", "load_abseil")
load("//third_party/gtest:direct.bzl", "load_gtest")
load("//third_party/re2:direct.bzl", "load_re2")
load("//third_party/rules_jvm_external:direct.bzl", "load_rules_jvm_externals")
load("//third_party/rules_python:direct.bzl", "load_rules_python")
load("//third_party/skylib:direct.bzl", "load_skylib")

def load_third_party_libraries():
    """Load all third party dependencies"""
    load_abseil()
    load_gtest()
    load_re2()
    load_rules_jvm_externals()
    load_rules_python()
    load_skylib()
