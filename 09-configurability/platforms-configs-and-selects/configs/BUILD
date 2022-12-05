load("@bazel_skylib//rules:common_settings.bzl", "string_flag")

string_flag(
    name = "sum",
    build_setting_default = "accurate",
)

config_setting(
    name = "accurate_config",
    flag_values = {
        ":sum": "accurate",
    },
)

config_setting(
    name = "rounding_config",
    flag_values = {
        ":sum": "rounding",
    },
)
