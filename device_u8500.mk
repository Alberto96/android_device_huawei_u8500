# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8500/overlay

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    Gallery \
    copybit.u8500 \
    gps.u8500

# Vold config
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/init.u8500.rc:root/init.u8500.rc \
    device/huawei/u8500/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# Boot-Logo
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/initlogo.rle:root/initlogo.rle

# Splash-Logo
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn 

# Load_Oemlogo
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/bin/load_oemlogo:system/bin/load_oemlogo 

# Ramzswap - module
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/lib/modules/ramzswap.ko:system/lib/modules/ramzswap.ko 

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/u8500/prebuilt/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/u8500/prebuilt/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/u8500/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko \
    device/huawei/u8500/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8500/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Keychars and Keylayout
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/huawei/u8500/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8500/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8500/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8500/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/huawei/u8500/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8500/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8500/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8500/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8500/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv
   

PRODUCT_COPY_FILES += device/huawei/u8500/prebuilt/kernel:kernel

$(call inherit-product-if-exists, vendor/huawei/u8500/u8500-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_NAME := u8500
PRODUCT_DEVICE := u8500
PRODUCT_MODEL := u8500
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
