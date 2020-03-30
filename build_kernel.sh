#!/bin/bash
clear
export ARCH=arm64
export SUBARCH=arm64
export HEADER_ARCH=arm64
make O=out ARCH=arm64 SUBARCH=arm64 HEADARCH=arm64 CC=/home/build/server/kernel/google-clang/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=/home/build/server/clang/bin/aarch64-linux-gnu- CROSS_COMPILE_ARM32=/home/build/server/clang/bin/arm-linux-gnueabi- aosp_polaris_defconfig
cd out
make -j24 O=out ARCH=arm64 SUBARCH=arm64 HEADARCH=arm64 CC=/home/build/server/kernel/google-clang/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=/home/build/server/clang/bin/aarch64-linux-gnu- CROSS_COMPILE_ARM32=/home/build/server/clang/bin/arm-linux-gnueabi-