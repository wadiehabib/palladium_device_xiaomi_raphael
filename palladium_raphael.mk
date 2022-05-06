#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Palladium-OS stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
PALLADIUM_BUILD_TYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := palladium_raphael

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladium.maintainer=Wadie Habib

BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys" 
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="raven-user 12 SP2A.220505.002 8353555 release-keys"
