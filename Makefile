ARCHS = arm64 arm64e
TARGET = iphone:clang:15.0:15.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = roothide
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = RelaxinDemo
RelaxinDemo_FILES = Tweak.x
RelaxinDemo_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk




