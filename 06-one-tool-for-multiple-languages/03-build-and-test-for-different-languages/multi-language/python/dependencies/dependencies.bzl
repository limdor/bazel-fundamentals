"""
Load all Python dependencies using pip
"""

load("@rules_python//python:pip.bzl", "pip_install")

def load_python_dependencies():
    pip_install(
        name = "my_dev_deps",
        requirements = "@//python/dependencies:requirements_dev.txt",
    )
