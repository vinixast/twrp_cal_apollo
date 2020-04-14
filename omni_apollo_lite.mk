$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/vernee/apollo_lite/prebuilt/zImage:kernel

PRODUCT_DEVICE := apollo_lite
PRODUCT_NAME := omni_apollo_lite
PRODUCT_BRAND := vernee
PRODUCT_MODEL := apollo_lite
PRODUCT_MANUFACTURER := vernee

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/permissive.sh:root/sbin/permissive.sh \
    $(LOCAL_PATH)/recovery/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.ranchu.rc:root/ueventd.ranchu.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc
