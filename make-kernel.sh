#!/bin/bash
CCOMPILER=~/android-cm/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-
export CCOMPILER=~/android-cm/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-
make UncappedStable_defconfig
make ARCH=arm CROSS_COMPILE=$CCOMPILER -j3
