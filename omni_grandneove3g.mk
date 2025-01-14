# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_RELEASE_NAME := grandneove3g

$(call inherit-product, vendor/omni/config/common.mk)

# Common path for device trees
COMMON_PATH := device/samsung/sc8830-common

# Device path for OEM device tree
DEVICE_PATH := device/samsung/grandneove3g

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/kernel:kernel

PRODUCT_NAME := omni_grandneove3g
PRODUCT_DEVICE := grandneove3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9060I
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_CHARACTERISTICS := phone
