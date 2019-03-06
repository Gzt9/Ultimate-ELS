#!/bin/bash

export CROSS_COMPILE=$(pwd)/bin/aarch64-linux-android-

export ARCH=arm64 && export SUBARCH=arm64

make clean

make mrproper

make exynos9810-starlte_defconfig

make -j$(nproc --all)

