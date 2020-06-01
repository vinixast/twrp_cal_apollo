LOCAL_PATH := device/vernee/apollo_x

ifneq ($(filter apollo_x,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
