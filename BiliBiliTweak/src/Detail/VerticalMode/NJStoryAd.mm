#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/VerticalMode/NJStoryAd.xm"









#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBStoryScrollGuideModel; @class BBStoryCreativeEntrance; 


#line 13 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/VerticalMode/NJStoryAd.xm"
static BBStoryCreativeEntrance* (*_logos_orig$App$BBStoryCreativeEntrance$init)(_LOGOS_SELF_TYPE_INIT BBStoryCreativeEntrance*, SEL) _LOGOS_RETURN_RETAINED; static BBStoryCreativeEntrance* _logos_method$App$BBStoryCreativeEntrance$init(_LOGOS_SELF_TYPE_INIT BBStoryCreativeEntrance*, SEL) _LOGOS_RETURN_RETAINED; static BBStoryScrollGuideModel* (*_logos_orig$App$BBStoryScrollGuideModel$init)(_LOGOS_SELF_TYPE_INIT BBStoryScrollGuideModel*, SEL) _LOGOS_RETURN_RETAINED; static BBStoryScrollGuideModel* _logos_method$App$BBStoryScrollGuideModel$init(_LOGOS_SELF_TYPE_INIT BBStoryScrollGuideModel*, SEL) _LOGOS_RETURN_RETAINED; 




static BBStoryCreativeEntrance* _logos_method$App$BBStoryCreativeEntrance$init(_LOGOS_SELF_TYPE_INIT BBStoryCreativeEntrance* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBStoryScrollGuideModel* _logos_method$App$BBStoryScrollGuideModel$init(_LOGOS_SELF_TYPE_INIT BBStoryScrollGuideModel* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return nil;
}





static __attribute__((constructor)) void _logosLocalCtor_e95efde9(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BBStoryCreativeEntrance = objc_getClass("BBStoryCreativeEntrance"); { MSHookMessageEx(_logos_class$App$BBStoryCreativeEntrance, @selector(init), (IMP)&_logos_method$App$BBStoryCreativeEntrance$init, (IMP*)&_logos_orig$App$BBStoryCreativeEntrance$init);}Class _logos_class$App$BBStoryScrollGuideModel = objc_getClass("BBStoryScrollGuideModel"); { MSHookMessageEx(_logos_class$App$BBStoryScrollGuideModel, @selector(init), (IMP)&_logos_method$App$BBStoryScrollGuideModel$init, (IMP*)&_logos_orig$App$BBStoryScrollGuideModel$init);}}
    }
}
