load("@rules_foreign_cc//tools/build_defs:configure.bzl", "configure_make")

# An openssl build file based on a snippet found in the github issue:
# https://github.com/bazelbuild/rules_foreign_cc/issues/337

# Read https://wiki.openssl.org/index.php/Compilation_and_Installation

filegroup(
    name = "all",
    srcs = glob(["**"]),
)

# OpenSSL build rules
# https://github.com/bazelbuild/rules_foreign_cc/issues/337#issuecomment-657004174
CONFIGURE_OPTIONS = [
    "no-weak-ssl-ciphers",
    "no-idea",
    "no-comp",
]

configure_make(
    name = "openssl",
    configure_command = "config",
    configure_env_vars = select({
        "@platforms//os:macos": {
            "AR": "",
        },
        "//conditions:default": {},
    }),
    configure_options = select({
        "@platforms//os:macos": [
            "shared",
            "no-afalgeng",
            "ARFLAGS=r",
        ] + CONFIGURE_OPTIONS,
        "//conditions:default": [
        ] + CONFIGURE_OPTIONS,
    }),
    lib_source = "@openssl//:all",
    shared_libraries = select({
        "@platforms//os:macos": [
            "libssl.dylib",
            "libcrypto.dylib",
        ],
        "//conditions:default": [
            "libssl.so",
            "libssl.so.1.1",
            "libcrypto.so",
            "libcrypto.so.1.1",
        ],
    }),
    visibility = ["//visibility:public"],
)
