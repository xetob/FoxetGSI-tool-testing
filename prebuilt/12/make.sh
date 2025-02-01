#!/bin/bash

systempath=$1
romdir=$2
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

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

#sudo sed -i "s|/dev/uinput               0660   uhid       uhid|/dev/uinput               0660   system     bluetooth|" $1/etc/ueventd.rc

# Disable bpfloader
rm -rf $1/etc/init/bpfloader.rc

# product-prop patches
echo "ro.apex.updatable=true" >> $1/product/etc/build.prop
echo "ro.cp_system_other_odex=0" >> $1/product/etc/build.prop
echo "ro.nnapi.extensions.deny_on_product=true" >> $1/product/etc/build.prop
echo "ro.lmk.kill_heaviest_task=true" >> $1/product/etc/build.prop
echo "ro.lmk.kill_timeout_ms=100" >> $1/product/etc/build.prop
echo "ro.lmk.use_minfree_levels=true" >> $1/product/etc/build.prop
echo "bpf.progs_loaded=1" >> $1/product/etc/build.prop
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
echo "ro.boot.vendor.overlay.theme=com.google.android.systemui.gxoverlay" >> $1/product/etc/build.prop
echo "ro.config.ringtone=The_big_adventure.ogg" >> $1/product/etc/build.prop
echo "ro.config.notification_sound=Popcorn.ogg" >> $1/product/etc/build.prop
echo "ro.config.alarm_alert=Bright_morning.ogg" >> $1/product/etc/build.prop
echo "persist.sys.overlay.pixelrecents=true" >> $1/product/etc/build.prop
echo "qemu.hw.mainkeys=0" >> $1/product/etc/build.prop
echo "ro.opa.eligible_device=true" >> $1/product/etc/build.prop
echo "ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent" >> $1/product/etc/build.prop
echo "ro.com.android.dataroaming=false" >> $1/product/etc/build.prop
echo "ro.com.google.clientidbase=android-google" >> $1/product/etc/build.prop
echo "ro.error.receiver.system.apps=com.google.android.gms" >> $1/product/etc/build.prop
echo "ro.com.google.ime.theme_id=5" >> $1/product/etc/build.prop
echo "ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms" >> $1/product/etc/build.prop
echo "ro.com.google.ime.height_ratio=1.0" >> $1/product/etc/build.prop
echo "ro.setupwizard.mode=OPTIONAL" >> $1/product/etc/build.prop
echo "ro.vndk.lite=false" >> $1/product/etc/build.prop
echo "persist.sys.disable_rescue=true" >> $1/product/etc/build.prop
echo "ro.control_privapp_permissions=disable" >> $1/product/etc/build.prop
