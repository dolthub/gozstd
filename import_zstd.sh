#!/bin/bash

# Small script to copy the zstd/lib source files into this directory and
# rewrite their #include directives so that they find everything in the flat
# format.

set -eo pipefail

cd $(dirname ${BASH_SOURCE[0]})

find zstd/lib \( -name '*.c' -o -name '*.h' -o -name '*.S' \) -exec cp \{\} . \;
for f in *.h *.c *.S; do
  sed -i'' -e 's|#include \+".*/\([^"]\+\)"|#include "\1"|' "$f"
done
