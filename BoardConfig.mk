#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/zte/draco

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648

# Architecture
BOARD_USES_ADRENO := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
TARGET_CPU_VARIANT := cortex-a7

# Display
BOARD_USES_ADRENO := true
TW_ROTATION := 0
DEVICE_RESOLUTION := 480x854
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 80
TW_MAX_BRIGHTNESS := 254 # Display turns off at 255

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x0003000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x0033000000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 0x0002000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x00AE000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x00d5ffbe00

# Platform
BOARD_VENDOR := zte
TARGET_NO_BOOTLOADER := true
TARGET_SOC := msm8909
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOOTLOADER_BOARD_NAME := draco
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Recovery
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_DEVICE_DIRS := $(LOCAL_PATH)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP
RECOVERY_SDCAD_ON_DATA := true
TW_EXTRA_LANGUAGES := true
TW_HAS_EDL_MODE := true
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_REBOOT_BOOTLOADER := true
TWRP_INCLUDE_LOGCAT := true
TW_THEME := portrait_hdpi

include $(LOCAL_PATH)/kernel.mk
