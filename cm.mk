# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/cprimeltemtr/full_cprimeltemtr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cprimeltemtr TARGET_DEVICE=cprimeltemtr

PRODUCT_NAME := cm_cprimeltemtr
