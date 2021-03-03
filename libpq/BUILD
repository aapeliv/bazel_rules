load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@io_bazel_rules_docker//cc:image.bzl", "cc_image")

cc_binary(
    name = "example",
    srcs = ["example.c"],
    deps = ["@postgres//:postgres"],
)

# does not work on macOS
cc_image(
    name = "example_img",
    srcs = ["example.c"],
    deps = ["@postgres//:postgres"],
    # includes compatible c std lib versions
    base = "@cc-deb//image",
)
