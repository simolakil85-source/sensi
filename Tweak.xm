#import "KittyMemory/MemoryPatch.hpp"

// هاد الدالة كتقوم بتعديل الحساسية بنسبة 70% (Legit)
void SetupLegitSensitivity() {
    // العنوان اللي جبناه من الـ dump
    uintptr_t offset = 0x6C91040;
    
    // القيمة 1.5f كتعطيك زيادة خفيفة فالحساسية باش تجيب الهيدشوت
    float legitValue = 1.5f; 
    
    // كنوصلو لذاكرة اللعبة وكنعدلو القيمة بلا ما نغيرو كود الدالة
    // هاد الطريقة كتخلي السكريبت ديالك "غير مرئي" لحماية اللعبة
    auto patch = KittyMemory::MemoryPatch::createWithBytes("UnityFramework", offset, (void*)&legitValue, sizeof(float));
    
    // تطبيق التعديل
    patch.Modify();
}

// دالة التشغيل عند فتح اللعبة
%ctor {
    // تشغيل السكريبت بمجرد ما تفتح اللعبة
    SetupLegitSensitivity();
}