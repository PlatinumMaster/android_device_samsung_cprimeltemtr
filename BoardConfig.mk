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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common cprimeltemtr
-include device/samsung/coreprimelte-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/cprimeltemtr/BoardConfigVendor.mk

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2181038080
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5016350720

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Assert
TARGET_OTA_ASSERT_DEVICE := cprimeltemtr,SM-G360T1

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916
TARGET_KERNEL_CONFIG := cyanogenmod_cprimelte_defconfig

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/cprimeltemtr/init/init_cprimeltemtr.c
