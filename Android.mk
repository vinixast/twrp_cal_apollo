ifneq ($(filter apollo_x,$(TARGET_DEVICE)),)

LOCAL_PATH := device/vernee/apollo_x,

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
