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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# 32-bit
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Another common config inclusion
#$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Files under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := draco
PRODUCT_NAME := omni_draco
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := Z835
PRODUCT_MANUFACTURER := ZTE

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop?
