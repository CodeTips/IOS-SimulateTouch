# lipoplastic setup for armv6 + arm64 compilation
export ARCHS = arm64e arm64

SUBPROJECTS = appdelegate zxtouch-binary pccontrol

include /opt/theos/makefiles/common.mk
include $(FW_MAKEDIR)/aggregate.mk

after-install::
	install.exec "chown -R mobile:mobile /var/mobile/Library/ZXTouch && killall -9 SpringBoard;"
