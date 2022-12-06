# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages.
DEVICE_PATH := device/samsung/grandneove3g

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTIMAGE := $(DEVICE_PATH)/prebuilt/dt.img # Used by mkbootimg.mk in common tree.

# Inherit from common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# Recovery
TARGET_OTA_ASSERT_DEVICE := grandneove3g
BOARD_HAS_NO_SELECT_BUTTON := true
TW_THEME := portrait_mdpi
