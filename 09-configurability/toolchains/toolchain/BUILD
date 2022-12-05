load(":cc_toolchain_config.bzl", "cc_toolchain_config")
load("@rules_cc//cc:defs.bzl", "cc_toolchain")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "empty",
    srcs = [],
)

toolchain(
    name = "my_linux_toolchain",
    exec_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    target_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    toolchain = ":cc_linux_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

cc_toolchain(
    name = "cc_linux_toolchain",
    all_files = ":empty",
    ar_files = ":empty",
    as_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    module_map = None,
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 1,
    toolchain_config = ":local",
    toolchain_identifier = "local",
)

cc_toolchain_config(
    name = "local",
    abi_libc_version = "local",
    abi_version = "local",
    compiler = "compiler",
    cpu = "k8",
    cxx_builtin_include_directories = [
        "/usr/lib/gcc/x86_64-linux-gnu/9/include",
        "/usr/local/include",
        "/usr/include/x86_64-linux-gnu",
        "/usr/include",
        "/usr/include/c++/9",
        "/usr/include/x86_64-linux-gnu/c++/9",
        "/usr/include/c++/9/backward",
    ],
    host_system_name = "local",
    target_libc = "local",
    target_system_name = "local",
    tool_paths = {
        "ar": "/usr/bin/ar",
        "ld": "/usr/bin/ld",
        "llvm-cov": "None",
        "cpp": "/usr/bin/cpp",
        "gcc": "/usr/bin/gcc",
        "dwp": "/usr/bin/dwp",
        "gcov": "/usr/bin/gcov",
        "nm": "/usr/bin/nm",
        "objcopy": "/usr/bin/objcopy",
        "objdump": "/usr/bin/objdump",
        "strip": "/usr/bin/strip",
    },
    toolchain_identifier = "local",
)
