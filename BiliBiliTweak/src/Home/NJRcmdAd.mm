#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/NJRcmdAd.xm"


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

@class AdPegasusModel; @class AdPGInfoModel; @class BFCStoreScorePopupManager; @class AdPGCmInfoModel; @class BannerItemModel; 
static id (*_logos_orig$_ungrouped$AdPGInfoModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPGInfoModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$AdPegasusModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPegasusModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$AdPGCmInfoModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPGCmInfoModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$BannerItemModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$BannerItemModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$)(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); static void _logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/NJRcmdAd.xm"


static id _logos_method$_ungrouped$AdPGInfoModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_method$_ungrouped$AdPegasusModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_method$_ungrouped$AdPGCmInfoModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}







static id _logos_method$_ungrouped$BannerItemModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id param, id need, id close) {
    
}

static void _logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long attentionCount, unsigned long long shareCount, unsigned long long likeCount, unsigned long long watchVideoCount, id config) {
    
}



static __attribute__((constructor)) void _logosLocalCtor_9f2e78ec(int __unused argc, char __unused **argv, char __unused **envp) {





    {Class _logos_class$_ungrouped$AdPGInfoModel = objc_getClass("BBAdPegasus.AdPGInfoModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPGInfoModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPGInfoModel$init, (IMP*)&_logos_orig$_ungrouped$AdPGInfoModel$init);}Class _logos_class$_ungrouped$AdPegasusModel = objc_getClass("BBAdPegasus.AdPegasusModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPegasusModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPegasusModel$init, (IMP*)&_logos_orig$_ungrouped$AdPegasusModel$init);}Class _logos_class$_ungrouped$AdPGCmInfoModel = objc_getClass("BBAdPegasus.AdPGCmInfoModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPGCmInfoModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPGCmInfoModel$init, (IMP*)&_logos_orig$_ungrouped$AdPGCmInfoModel$init);}Class _logos_class$_ungrouped$BannerItemModel = objc_getClass("BBAdPegasus.BannerItemModel"); { MSHookMessageEx(_logos_class$_ungrouped$BannerItemModel, @selector(init), (IMP)&_logos_method$_ungrouped$BannerItemModel$init, (IMP*)&_logos_orig$_ungrouped$BannerItemModel$init);}Class _logos_class$_ungrouped$BFCStoreScorePopupManager = objc_getClass("BFCStoreScorePopupManager"); Class _logos_metaclass$_ungrouped$BFCStoreScorePopupManager = object_getClass(_logos_class$_ungrouped$BFCStoreScorePopupManager); { MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showWithNeed:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showFromJSBWithNeed:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showWithParam:need:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCStoreScorePopupManager, @selector(showWithAttentionCount:shareCount:likeCount:watchVideoCount:popperConfig:), (IMP)&_logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$, (IMP*)&_logos_orig$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$);}}
    
}

