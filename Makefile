# تحديد هندسة المعالج (آيفون يدعم arm64)
ARCHS = arm64
# تحديد إصدار النظام
TARGET := iphone:clang:latest:12.0
# اسم العملية ديال اللعبة (باش المود يخدم فيها بوحدها)
INSTALL_TARGET_PROCESSES = FreeFire

# تضمين إعدادات Theos الأساسية
include $(THEOS)/makefiles/common.mk

# اسم المود ديالك
TWEAK_NAME = SensiMod

# الملفات اللي خاصها تتجمع (Tweak.xm هو الأساس)
SensiMod_FILES = Tweak.xm
# إضافة دعم الـ KittyMemory (ضروري إلا كنتي كاتخدم بيه)
SensiMod_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
# تفعيل الـ ARC باش ما يوقعوش كراشات
SensiMod_CFLAGS = -fobjc-arc
# المكتبات اللازمة
SensiMod_LIBRARIES = substrate

# أمر البناء النهائي
include $(THEOS_MAKE_PATH)/tweak.mk
