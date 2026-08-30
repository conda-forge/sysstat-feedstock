#!/usr/bin/env bash

sa_dir="$PREFIX/log/sa" conf_dir="$PWD/junk/conf_dir" rcdir="$PWD/junk/rcdir" ./configure \
    --prefix="$PREFIX" \
    --with-systemdsystemunitdir="$PWD/junk/unitdir" \
    --with-systemdsleepdir="$PWD/junk/sleepdir" \
    --disable-file-attr \
    --disable-automated-sar-reporting \

make -j$CPU_COUNT
make install
