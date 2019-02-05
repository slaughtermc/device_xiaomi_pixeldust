#
# Copyright (C) 2015-2016 The CyanogenMod Project
#           (C) 2017-2018 The LineageOS Project
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

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hydrogen device
$(call inherit-product, device/xiaomi/hydrogen/device.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/pixeldust/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := hydrogen
PRODUCT_NAME := pixeldust_hydrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Max Prime
TARGET_VENDOR := Xiaomi
CUSTOM_BUILD_TYPE := UNOFFICIAL
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_MINIMAL_APPS := true
TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="helium-user 7.0 NRD90M V10.1.1.0.NBDMIFI release-keys"
BUILD_FINGERPRINT=Xiaomi/helium/helium:7.0/NRD90M/V10.1.1.0.NBDMIFI:user/release-keys

