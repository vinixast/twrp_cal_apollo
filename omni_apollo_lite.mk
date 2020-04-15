$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)



# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/vernee/apollo_lite/prebuilt/zImage:kernel

PRODUCT_DEVICE := apollo_lite
PRODUCT_NAME := omni_apollo_lite
PRODUCT_BRAND := vernee
PRODUCT_MODEL := apollo_lite
PRODUCT_MANUFACTURER := vernee

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
    
# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="vernee/apollo_lite/k15tb_a:6.0/MRA58K/1493198123:user/test-keys" \
    PRIVATE_BUILD_DESC="full_k15tb_a-user 6.0 MRA58K 1493198123 test-keys"

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/permissive.sh:root/sbin/permissive.sh \
    $(LOCAL_PATH)/recovery/root/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/recovery/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.rc:root/meta_init.rcc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6797.rc:root/ueventd.mt6797.rc
