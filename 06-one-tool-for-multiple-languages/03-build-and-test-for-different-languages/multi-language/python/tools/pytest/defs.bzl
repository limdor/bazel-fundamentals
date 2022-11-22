"""
Macro to be used for any test using pytest

It will include the main and the pytest dependency
"""

load("@my_dev_deps//:requirements.bzl", "requirement")

def pytest_test(name, srcs, deps = [], args = [], data = [], **kwargs):
    native.py_test(
        name = name,
        srcs = [
            "@//python/tools/pytest:pytest_wrapper.py",
        ] + srcs,
        main = "@//python/tools/pytest:pytest_wrapper.py",
        args = [
            "--capture=no",
            "--pylint",
            "--pylint-rcfile=$(location @//python/tools/pytest:.pylintrc)",
            "-rA",
        ] + args + ["$(location :%s)" % x for x in srcs],
        python_version = "PY3",
        srcs_version = "PY3",
        deps = deps + [
            requirement("pytest"),
            requirement("pytest-pylint"),
        ],
        data = [
            "@//python/tools/pytest:.pylintrc",
        ] + data,
        **kwargs
    )
