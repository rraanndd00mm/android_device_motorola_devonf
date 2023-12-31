#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/devonf

# APEX <- enables apex to be updatable -> also look at device.mk
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a78

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := devonf
TARGET_NO_BOOTLOADER := true

##########################################

# this part defines boot image flags : https://github.com/PQEnablers-Devices/android_device_xiaomi_ruby/commit/41e53f39ff38db814d811af942f74ef3d581ed18

# Boot Image
#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_OFFSET := 0x00008000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
#BOARD_RAMDISK_OFFSET := 0x11088000
#BOARD_DTB_OFFSET := 0x07c08000
#
#BOARD_BOOTIMG_HEADER_VERSION := 2
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.tee_type=2
#
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
#BOARD_MKBOOTIMG_ARGS += --board ""

#########################################

# DTBO <- not sure about this, check source or something <- configures DTBO image building
# BOARD_KERNEL_SEPERATED_DTBO := true

#########################################

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/motorola/mt6855
TARGET_KERNEL_CONFIG := devonf_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r416183b
# ??? BOARD_KERNEL_IMAGE_NAME := Image.gz

# Platform
TARGET_BOARD_PLATFORM := mt6855
BOARD_HAS_MTK_HARDWARE := true

##########################################
# Verified Boot <- builds disabled VBMeta image <- dont know what this is
#BOARD_AVB_ENABLE := true
#BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
# following part specifies AVB recovery flags
#BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
#BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
##########################################

# VNDK <- enables full build system support for VNDK
BOARD_VNDK_VERSION := current

# Inherit the proprietary files
include vendor/motorola/devonf/BoardConfigVendor.mk
