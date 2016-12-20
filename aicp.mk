# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit AICP common bits
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit HDX common device configuration
$(call inherit-product, device/amazon/hdx-common/cm.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/amazon/thor/full_thor.mk)

# AICP Device identifiers
PRODUCT_NAME := aicp_thor

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Izumi Inami (droidfivex)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
