#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Inherit proprietary blobs
-include vendor/xiaomi/venus/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/venus

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := venus

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_venus
TARGET_RECOVERY_DEVICE_MODULES := libinit_venus

# HIDL
ODM_MANIFEST_SKUS += \
    joyeuse

ODM_MANIFEST_JOYEUSE_FILES := $(DEVICE_PATH)/manifest_joyeuse.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := venus
