#!/bin/bash
[ -z $ANDROID ] && ANDROID=/media/android

me=`basename $0`
CCOMPILER=~/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-
export CCOMPILER

echo "Using $CCOMPILER"

if [[ "${1}" == "DC" ]]
then
        make ARCH=arm CROSS_COMPILE=$CCOMPILER UncappedStable_defconfig
else
        if [[ "${1}" == "MC" ]]
        then
                make ARCH=arm CROSS_COMPILE=$CCOMPILER menuconfig
        else
                if [[ "${1}" == "K" ]]
                then
                        make ARCH=arm CROSS_COMPILE=$CCOMPILER ${2}
                else
                        echo "Usage: "
                        echo " ANDROID=/path/to/android/ ${me} <action>"
                        echo
                        echo " Supported Actions: "
                        echo "  MC     -     Menuconfig "
                        echo "  DC     -     Default Config "
                        echo "  K      -     Kernel"
                fi
        fi
fi
