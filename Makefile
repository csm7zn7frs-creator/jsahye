ARCHS = arm64 arm64e
TARGET = iphone:clang::15.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RelaxinDemo

RelaxinDemo_FILES = Tweak.x
RelaxinDemo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk




