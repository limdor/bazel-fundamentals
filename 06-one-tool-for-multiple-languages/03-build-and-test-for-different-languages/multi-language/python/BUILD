load("//python/tools/pytest:defs.bzl", "pytest_test")

py_binary(
    name = "hello_world",
    srcs = ["hello_world.py"],
    deps = [":my_lib"],
)

py_library(
    name = "my_lib",
    srcs = [
        "__init__.py",
        "my_lib.py",
    ],
)

pytest_test(
    name = "test",
    srcs = ["my_lib_test.py"],
    deps = [
        ":my_lib",
    ],
)
