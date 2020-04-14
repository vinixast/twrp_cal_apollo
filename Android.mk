ifneq ($(filter apollo_lite,$(TARGET_DEVICE)),)

LOCAL_PATH := device/vernee/apollo_lite,

include $(call all-makefiles-under,$(LOCAL_PATH))

endif