ARCHS = arm64
TARGET := iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES = FreeFire

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SensiMod

SensiMod_FILES = Tweak.xm
SensiMod_CFLAGS = -fobjc-arc
SensiMod_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/tweak.mk


