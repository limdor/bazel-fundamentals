load("//rules:simplest_rule.bzl", "my_first_rule")
load("//rules:template.bzl", "configure_file")

my_first_rule(
    name = "generated_file",
)

configure_file(
    name = "configured_file",
    out = "my_file.txt",
    substitutions = {
        "{NAME}": "Xavier",
        "{SURNAME}": "Bonaventura",
    },
    template = "template.tpl",
)
