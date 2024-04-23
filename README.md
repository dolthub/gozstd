See [upstream](https://github.com/valyala/gozstd).

Changes upstream to build zstd as part of the Cgo build, instead of vendoring libraries for supported platforms. It also takes the zstd dependency as git submodule.

This fork changes the import path of upstream to be `github.com/dolthub/gozstd`.

This fork adds `-O3 -DZSTD_MULTITHREAD` as compile flags when building the C code.

To update the zstd version, update the submodule, and then run `./import_zstd.sh`. It's possible `./import_zstd.sh` will break with future zstd updates.
