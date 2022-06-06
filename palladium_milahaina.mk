#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/milahaina/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := milahaina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 11T Pro
PRODUCT_NAME := palladium_milahaina

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=milahaina \
    PRODUCT_NAME=vili

PALLADIUM_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladium.maintainer=Wadie Habib

BUILD_FINGERPRINT := Xiaomi/vili/vili:11/RKQ1.210503.001/V12.5.2.0.RKDINXM:user/release-keys
