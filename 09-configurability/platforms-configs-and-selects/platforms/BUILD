platform(
    name = "linux_32_bits",
    constraint_values = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_32",
    ],
)

platform(
    name = "linux_64_bits",
    constraint_values = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
)

platform(
    name = "windows_32_bits",
    constraint_values = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_32",
    ],
)

platform(
    name = "windows_64_bits",
    constraint_values = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_64",
    ],
)

constraint_setting(name = "rendering_drivers")

constraint_value(
    name = "opengl",
    constraint_setting = ":rendering_drivers",
)

constraint_value(
    name = "directx",
    constraint_setting = ":rendering_drivers",
)

platform(
    name = "windows_64_bits_directx",
    constraint_values = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_64",
        ":directx",
    ],
)

platform(
    name = "windows_64_bits_opengl",
    constraint_values = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_64",
        ":opengl",
    ],
)
