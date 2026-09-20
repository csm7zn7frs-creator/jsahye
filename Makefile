ARCHS = arm64e
TARGET = iphone:clang:17.0:17.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RelaxinDemo

RelaxinDemo_FILES = Tweak.x
RelaxinDemo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

