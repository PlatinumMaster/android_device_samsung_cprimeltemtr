# Copyright (C) 2015 The CyanogenMod Project
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

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/cprimeltemtr/cprimeltemtr-vendor.mk)

# common msm8916
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.multisim.simslotcount=2 \
    persist.radio.multisim.config=dsds \
    rild.libpath2=/system/lib/libsec-ril-dsds.so
