ARCHS = arm64 arm64e
TARGET = iphone:clang:15.0:15.0

THEOS_PACKAGE_SCHEME = roothide

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RelaxinDemoPrefs

RelaxinDemoPrefs_FILES =
RelaxinDemoPrefs_INSTALL_PATH = /var/jb/Library/PreferenceBundles
RelaxinDemoPrefs_FRAMEWORKS = UIKit Foundation Preferences

include $(THEOS_MAKE_PATH)/bundle.mk
