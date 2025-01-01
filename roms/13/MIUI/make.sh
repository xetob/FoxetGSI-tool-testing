#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# build.prop
#echo "ro.bluetooth.library_name=libbluetooth_qti.so" >> $1/build.prop

# drop finddevice, needs to be done before copying system files
rm -rf $1/priv-app/FindDevice

# Copy system files
rsync -ra $thispath/system/ $systempath

# fixes for MemeUI
echo "DEVICE_PROVISIONED=1" >> $1/build.prop
echo "# MIUI Launcher Fix" >> $1/build.prop
echo "ro.miui.product.home=com.miui.home" >> $1/build.prop

echo "sys.miui.ndcd=off" >> $1/build.prop
echo "ro.miui.region=gb" >> $1/build.prop

#low end devices moment 
echo "ro.config.low_ram=false" >> $1/build.prop

# drop dirac
rm -rf $1/priv-app/DiracAudioControlService

sed -i 's/<bool name="support_round_corner">true/<bool name="support_round_corner">false/' $1/etc/device_features/*

sed -i "/miui.notch/d" $1/build.prop


