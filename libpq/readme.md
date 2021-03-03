# postgres/libpq with openssl + docker container

Mostly based on rules from [here](https://github.com/bazelbuild/rules_foreign_cc/issues/442). Thanks to [@jschaf](https://github.com/jschaf) and [@rahulmutt](https://github.com/rahulmutt) for their rules, and [@mattmoor](https://github.com/mattmoor) for helping out on getting the container stuff working over Slack!

Should build with `bazel build --incompatible_restrict_string_escapes=false //...`.

The example should work with `bazel run --incompatible_restrict_string_escapes=false //:example`. On Ubuntu 18.04 if you have docker installed, you can also run `bazel run --incompatible_restrict_string_escapes=false //:example_img`
