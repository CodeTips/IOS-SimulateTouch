include $(THEOS)/makefiles/common.mk

TOOL_NAME = zxtouchb
zxtouchb_ARCH = arm64e arm64

zxtouchb_FILES = main.mm
zxtouchb_CFLAGS = -fobjc-arc -Wno-error -Wno-module-import-in-extern-c -O2 -s -DNDEBUG

include $(THEOS_MAKE_PATH)/tool.mk
