# Copyright 2014 The Android Open Source Project
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

include device/sony/yukon/PlatformConfig.mk

TARGET_RECOVERY_FSTAB = device/sony/eagle/rootdir/fstab.eagle

TARGET_BOOTLOADER_BOARD_NAME := D2303

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1962934272
#Reserve space for data encryption (5461000192-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5460983808

BOARD_KERNEL_CMDLINE += androidboot.hardware=eagle

# TWRP flags
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
TW_THEME := portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_DEFAULT_LANGUAGE := ru
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/bootdevice/by-name/userdata"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TW_DEVICE_VERSION := Sikoka1989
# Exclude SU
TW_EXCLUDE_SUPERSU := true

# Disable twrp app prompt
TW_EXCLUDE_TWRPAPP := true

