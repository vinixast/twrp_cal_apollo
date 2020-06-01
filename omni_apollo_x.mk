$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
#PRODUCT_COPY_FILES += device/vernee/apollo_x/prebuilt/zImage:kernel

PRODUCT_DEVICE := apollo_x
PRODUCT_NAME := omni_apollo_x
PRODUCT_BRAND := Vernee
PRODUCT_MODEL := apollo_x
PRODUCT_MANUFACTURER := Vernee

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*
