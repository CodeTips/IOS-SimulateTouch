include $(THEOS)/makefiles/common.mk

TWEAK_NAME = appdelegate

appdelegate_FILES = Tweak.xm UIKeyboard.xm
appdelegate_CFLAGS = -Wno-error -Wno-module-import-in-extern-c -fobjc-arc

appdelegate_ARCHS = arm64e arm64
appdelegate_FRAMEWORKS = UIKit
#appdelegate_CCFLAGS = -std=c++11

include $(THEOS_MAKE_PATH)/tweak.mk
