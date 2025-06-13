#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/SearchResult.xm"


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

@class BBAdSearchModel; 
static BBAdSearchModel* (*_logos_orig$_ungrouped$BBAdSearchModel$init)(_LOGOS_SELF_TYPE_INIT BBAdSearchModel*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSearchModel* _logos_method$_ungrouped$BBAdSearchModel$init(_LOGOS_SELF_TYPE_INIT BBAdSearchModel*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$BBAdSearchModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/SearchResult.xm"


static BBAdSearchModel* _logos_method$_ungrouped$BBAdSearchModel$init(_LOGOS_SELF_TYPE_INIT BBAdSearchModel* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdSearchModel: %p> init]: %@", self, ((NSString *)nj_logPrefix));
    return nil;
}


static id _logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    NSLog(@"+[<BBAdSearchModel: %p> modelWithMossMessage:%@]: %@", self, message, ((NSString *)nj_logPrefix));
    return nil;
}




































static __attribute__((constructor)) void _logosLocalCtor_77583633(int __unused argc, char __unused **argv, char __unused **envp) {


    {Class _logos_class$_ungrouped$BBAdSearchModel = objc_getClass("BBAdSearchModel"); Class _logos_metaclass$_ungrouped$BBAdSearchModel = object_getClass(_logos_class$_ungrouped$BBAdSearchModel); { MSHookMessageEx(_logos_class$_ungrouped$BBAdSearchModel, @selector(init), (IMP)&_logos_method$_ungrouped$BBAdSearchModel$init, (IMP*)&_logos_orig$_ungrouped$BBAdSearchModel$init);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BBAdSearchModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$_ungrouped$BBAdSearchModel$modelWithMossMessage$);}}
    
}
