#! /usr/bin/env bash

git reset --hard
git clean -f
patch -p1 < _patches/super_key.3.7.diff
./autogen.sh
./configure --enable-utf8proc --enable-sixel --enable-jemalloc
time make -j8
