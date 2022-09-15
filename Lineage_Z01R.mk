#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from Z01R device
$(call inherit-product, device/asus/Z01R/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# maintainer flag (one word only/no spacing)
RICE_MAINTAINER := JuanTamadski

# chipset flag (one word only/no spacing)
RICE_CHIPSET := SD845

# gapps build flag, if not defined build type is vanilla
WITH_GMS := true

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Memory properties
# Tune these properties according to device perfconfigstore.xml(if available)/device capabilities.
# These props are overridable
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fw.bg_apps_limit?=48 \
    persist.sys.fw.use_trim_settings?=true \
    persist.sys.fw.empty_app_percent?=50 \
    persist.sys.fw.trim_empty_percent?=100 \
    persist.sys.fw.trim_cache_percent?=100 \
    persist.sys.fw.trim_enable_memory?=2147483648 \
    persist.sys.fw.bservice_age?=120000 \
    persist.sys.fw.bservice_limit?=6 \
    persist.sys.fw.bservice_enable?=true 

TARGET_USE_PIXEL_CHARGER := true

PRODUCT_BRAND := asus
PRODUCT_DEVICE := Z01R
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := Zenfone 5Z
PRODUCT_NAME := lineage_Z01R

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR_PRODUCT_NAME := Z01R
TARGET_VENDOR_DEVICE_NAME := Z01R

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_Z01R_1 \
    PRODUCT_NAME=WW_Z01RD \
    PRIVATE_BUILD_DESC="Z01R-user 8.0.0 OPR1.170623.032 WW_user_80.30.96.221_20181018 release-keys"

BUILD_FINGERPRINT := asus/WW_Z01RD/ASUS_Z01R_1:8.0.0/OPR1.170623.032/WW_80.30.96.221_20181018:user/release-keys
