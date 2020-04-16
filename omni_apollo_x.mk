$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)



# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
#PRODUCT_COPY_FILES += device/vernee/apollo_x/prebuilt/zImage:kernel

PRODUCT_DEVICE := k15tb_a
PRODUCT_NAME := Apollo X
PRODUCT_BRAND := Vernee
PRODUCT_MODEL := Apollo X 
PRODUCT_MANUFACTURER := alps

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
    
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/permissive.sh:root/sbin/permissive.sh \
    $(LOCAL_PATH)/recovery/root/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/recovery/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/recovery/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.rc:root/meta_init.rcc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6797.rc:root/ueventd.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/fstab.mt6797:root/fstab.mt6797 \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc
