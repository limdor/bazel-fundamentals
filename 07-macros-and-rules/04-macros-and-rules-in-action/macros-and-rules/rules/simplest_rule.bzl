"""
Rule to create an output file with fixed content
"""

def _my_first_rule_impl(ctx):
    out = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(
        output = out,
        content = "Generated file by my first rule!\n",
    )
    return [DefaultInfo(files = depset([out]))]

my_first_rule = rule(
    implementation = _my_first_rule_impl,
)
