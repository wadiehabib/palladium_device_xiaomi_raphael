#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Palladium stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MODEL := Mi 9T Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := palladium_raphael

BUILD_FINGERPRINT := "Xiaomi/raphaelin/raphaelin:9/PKQ1.181121.001/V10.3.3.0.PFKINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BOOT_ANIMATION_RES := 1080
PALLADIUM_BUILDTYPE := OFFICIAL

#PALLADIUM-PROPS
PRODUCT_PRODUCT_PROPERTIES += \
	ro.palladiumdevice.maintainer=WadieHabib \
	ro.palladiumdevice.cpu=SD855 \
	ro.palladiumdevice.display=6.39 \
	ro.palladiumdevice.displaytype=AMOLED \
	ro.palladiumdevice.battery=4000mAh \
	ro.palladiumdevice.camera=48MP+13MP+8MP

#FOD
EXTRA_FOD_ANIMATIONS := true

ifeq ($(with_gapps), yes)
PALLADIUM_BUILD_VARIANT := GAPPS
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
endif
