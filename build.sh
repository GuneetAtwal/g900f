#!/bin/bash
#
#  Blaze™ Kernel
#

clear

echo ""
echo ""
echo "Blaze™ Kernel for klte"
echo ""
echo ""

make mrproper
export ARCH=arm
export CROSS_COMPILE=/home/guneetatwal/android/kernel/arm-eabi-4.10/bin/arm-eabi-
export ENABLE_GRAPHITE=true
make msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_tmo_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make menuconfig
time make -j16 2>&1 | tee kernel.log

echo ""
echo ""
echo "The Build is Successful"
echo ""
echo ""

