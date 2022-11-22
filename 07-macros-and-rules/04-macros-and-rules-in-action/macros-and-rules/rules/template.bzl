"""
Rule to create an output file given a template input file
"""

def _configure_file_impl(ctx):
    ctx.actions.expand_template(
        output = ctx.outputs.out,
        template = ctx.file.template,
        substitutions = ctx.attr.substitutions,
    )

configure_file = rule(
    implementation = _configure_file_impl,
    attrs = {
        "template": attr.label(
            allow_single_file = [".tpl"],
            mandatory = True,
        ),
        "out": attr.output(mandatory = True),
        "substitutions": attr.string_dict(mandatory = True),
    },
)
