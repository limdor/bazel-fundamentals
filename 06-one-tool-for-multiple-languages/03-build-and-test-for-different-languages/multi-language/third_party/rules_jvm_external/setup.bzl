"""
Setup step needed before importing the transitive dependencies
"""

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

def call_rules_jvm_external_setup():
    rules_jvm_external_setup()
