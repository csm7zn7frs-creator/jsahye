ARCHS = arm64 arm64e
TARGET = iphone:clang:15.0:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

# 关键：RootHide专用打包标识，输出的deb原生适配RootHide，不需要Patcher
THEOS_PACKAGE_SCHEME = roothide

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RelaxinDemo

RelaxinDemo_FILES = Tweak.x
RelaxinDemo_CFLAGS = -fobjc-arc
RelaxinDemo_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk




