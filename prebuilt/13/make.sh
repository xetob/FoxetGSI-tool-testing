#!/bin/bash

systempath=$1
romdir=$2
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# Deal with non-flattened apex
#$thispath/../../scripts/apex_extractor.sh $1/apex
#$thispath/../../scripts/apex_extractor.sh $1/system_ext/apex
echo "ro.apex.updatable=true" >> $1/product/etc/build.prop

# Copy system files
rsync -ra $thispath/system/ $systempath

# Overlays
if [ ! -d  $1/product ]; then
    rm -rf $1/product
    mkdir -p $1/product
fi
mkdir -p $1/product/overlay

cp -fpr $thispath/nondevice_overlay/* $1/product/overlay/

if [ -f $romdir/NODEVICEOVERLAY ]; then
    echo "Using device specific overlays is not supported in this rom. Skipping..."
else
    cp -fpr $thispath/overlay/* $1/product/overlay/
fi

cat $thispath/rw-system.add.sh >> $1/bin/rw-system.sh

# Append file_context
cat $thispath/file_contexts >> $1/etc/selinux/plat_file_contexts

# Cleanup empty selinux mappings
find $1/system_ext/etc/selinux/mapping/ -type f -empty -delete

# Disable Codec2
sed -i "s/android.hardware.media.c2/android.hardware.erfan.c2/g" $1/etc/vintf/manifest.xml
rm -rf $1/etc/vintf/manifest/manifest_media_c2_software.xml

# Fix vendor CAF sepolicies
$thispath/../../scripts/sepolicy_prop_remover.sh $1/etc/selinux/plat_property_contexts "device/qcom/sepolicy" > $1/../../plat_property_contexts
mv $1/../../plat_property_contexts $1/etc/selinux/plat_property_contexts
sed -i "/typetransition location_app/d" $1/etc/selinux/plat_sepolicy.cil

# Drop reboot_on_failure of init.rc
sed -i "/reboot_on_failure/d" $1/etc/init/hw/init.rc

# GSI always generate dex pre-opt in system image
echo "ro.cp_system_other_odex=0" >> $1/product/etc/build.prop

# GSI disables non-AOSP nnapi extensions on product partition
echo "ro.nnapi.extensions.deny_on_product=true" >> $1/product/etc/build.prop

# TODO(b/136212765): the default for LMK
echo "ro.lmk.kill_heaviest_task=true" >> $1/product/etc/build.prop
echo "ro.lmk.kill_timeout_ms=100" >> $1/product/etc/build.prop
echo "ro.lmk.use_minfree_levels=true" >> $1/product/etc/build.prop

#sudo sed -i "s|/dev/uinput               0660   uhid       uhid|/dev/uinput               0660   system     bluetooth|" $1/etc/ueventd.rc

# Disable bpfloader
rm -rf $1/etc/init/bpfloader.rc
echo "bpf.progs_loaded=1" >> $1/product/etc/build.prop

# Don't write binary XML files
echo "persist.sys.binary_xml=false" >> $1/build.prop

# Bypass SF validateSysprops
echo "ro.surface_flinger.vsync_event_phase_offset_ns=-1" >> $1/product/etc/build.prop
echo "ro.surface_flinger.vsync_sf_event_phase_offset_ns=-1" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_late_app_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.early_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.early_gl_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.early_app_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.early_gl_app_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_late_sf_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_early_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_early_gl_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_early_app_phase_offset_ns=" >> $1/product/etc/build.prop
echo "debug.sf.high_fps_early_gl_app_phase_offset_ns=" >> $1/product/etc/build.prop

# Disable for everyone for the moment
echo "ro.sys.sdcardfs=0" >> $1/build.prop

# Fix developer settings
echo "# Fix developer settings" >> $1/build.prop
echo "ro.oem_unlock_supported=1" >> $1/build.prop

# You can nuke this if necessary
echo "# You can nuke this if necessary" >> $1/build.prop
echo "ro.opengles.version=196610" >> $1/build.prop
echo "telephony.lteOnCdmaDevice=1" >> $1/build.prop
echo "ro.product.property_source_order=system,product,system_ext,vendor,odm" >> $1/build.prop

# Force ADB
echo "# Force ADB" >> $1/build.prop
echo "persist.sys.usb.config=adb,mtp" >> $1/build.prop
echo "ro.adb.secure=0" >> $1/build.prop
echo "ro.secure=0" >> $1/build.prop
echo "ro.debuggable=1" >> $1/build.prop

echo "ro.control_privapp_permissions=disable" >> $1/build.prop
echo "ro.control_privapp_permissions=disable" >> $1/product/etc/build.prop
echo "ro.control_privapp_permissions=disable" >> $1/system_ext/etc/build.prop
echo "persist.sys.disable_rescue=true" >> $1/build.prop
echo "persist.sys.disable_rescue=true" >> $1/product/etc/build.prop
echo "persist.sys.disable_rescue=true" >> $1/system_ext/etc/build.prop

echo "# SIM Fix" >> $1/build.prop
echo "ro.multisim.simslotcount=2" >> $1/build.prop
echo "ro.vendor.multisim.simslotcount=2" >> $1/build.prop
echo "persist.radio.multisim.config=dsds" >> $1/build.prop
echo "persist.vendor.radio.msimode=dsds" >> $1/build.prop

echo "# Samsung vendors default to a Samsung-specific gadget for MTP. Set this to use AOSP's functionfs MTP" >> $1/build.prop
echo "vendor.usb.use_ffs_mtp=1" >> $1/build.prop

echo "#Fixes fingerprint unlock delay" >> $1/build.prop
echo "persist.wm.enable_remote_keyguard_animation=0" >> $1/build.prop

echo "# Enable support of one-handed mode" >> $1/build.prop
echo "ro.support_one_handed_mode=true" >> $1/build.prop

echo "# Set the Bluetooth Class of Device" >> $1/build.prop
echo "# Service Field: 0x5A -> 90" >> $1/build.prop
echo "#    Bit 17: Networking" >> $1/build.prop
echo "#    Bit 19: Capturing" >> $1/build.prop
echo "#    Bit 20: Object Transfer" >> $1/build.prop
echo "#    Bit 22: Telephony" >> $1/build.prop
echo "# MAJOR_CLASS: 0x02 -> 2 (Phone)" >> $1/build.prop
echo "# MINOR_CLASS: 0x0C -> 12 (Smart Phone)" >> $1/build.prop
echo "bluetooth.device.class_of_device=90,2,12" >> $1/build.prop

echo "# Enable system-side generic bluetooth audio HAL" >> $1/build.prop
echo "persist.bluetooth.system_audio_hal.enabled=true" >> $1/build.prop
echo "# Set commonly-supported Bluetooth profiles to enabled" >> $1/build.prop
echo "# TODO: Enable BLE Audio profiles on newer vendors" >> $1/build.prop
echo "bluetooth.profile.asha.central.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.a2dp.source.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.avrcp.target.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.bas.client.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.gatt.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.hfp.ag.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.hid.device.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.hid.host.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.map.server.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.opp.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.pan.nap.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.pan.panu.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.pbap.server.enabled?=true" >> $1/build.prop
echo "bluetooth.profile.sap.server.enabled?=true" >> $1/build.prop

