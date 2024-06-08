"""
Rule for compiling and running an NUnit3 test suite with NUnitlite

This rule is a macro that has the same attributes as `csharp_test`
"""

load("//dotnet/private/rules/csharp:test.bzl", "csharp_test")

def csharp_nunit_test(**kwargs):
    srcs = kwargs.pop("srcs", []) + [
        Label("//dotnet/private/rules/common/nunit:shim.cs"),
    ]

    csharp_test(
        srcs = srcs,
        **kwargs
    )
