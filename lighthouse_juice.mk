#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configurations
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common potato stuff.
$(call inherit-product, vendor/lighthouse/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_DEVICE=juice

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lighthouse_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi


# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/S3B1.220318.003/8372304:user/release-keys
BUILD_DESC := "raven-user 12 S3B1.220318.003 8372304 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
	
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi