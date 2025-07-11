#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIViewController+NJFind.h"



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

@class BBLiveBaseMixedRankEntryView; @class BBLiveTopRightEntranceManager; @class BBLiveRevenueCardsContentView; @class BBLiveBaseUserRankListEntryView; @class BBLiveChainView; @class BBLiveVerticalCenterBar; @class BBLiveBasePopularHotRankEntryView; @class BBLiveBaseAreaRankEntryView; @class BBLiveBaseAppointmentEntryView; @class BBLiveBaseAppointmentCardView; @class BBLiveBasePopularRankEntryView; @class BBLiveFunctionCardTaskManager; 
static BBLiveRevenueCardsContentView* (*_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$)(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* (*_logos_orig$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* _logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* (*_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* (*_logos_orig$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* (*_logos_orig$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* _logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* (*_logos_orig$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAreaRankEntryView* (*_logos_orig$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAreaRankEntryView* _logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* (*_logos_orig$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* _logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* (*_logos_orig$_ungrouped$BBLiveTopRightEntranceManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* _logos_method$_ungrouped$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveChainView* (*_logos_orig$_ungrouped$BBLiveChainView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveChainView* _logos_method$_ungrouped$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* (*_logos_orig$_ungrouped$BBLiveFunctionCardTaskManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* _logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); 

#line 8 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView* __unused self, SEL __unused _cmd, id source, id model) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveBaseAppointmentEntryView* _logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveBaseAppointmentCardView : NSObject

@end



static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBasePopularHotRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseUserRankListEntryView* _logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBasePopularRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBaseAreaRankEntryView* _logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseMixedRankEntryView* _logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveTopRightEntranceManager* _logos_method$_ungrouped$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveChainView* _logos_method$_ungrouped$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveFunctionCardTaskManager* _logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveVerticalCenterBar : NSObject

@property (retain, nonatomic) UIView *topPendantContainerView;

@end



static void _logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [self.topPendantContainerView removeFromSuperview];
    self.topPendantContainerView = nil;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBLiveRevenueCardsContentView = objc_getClass("BBLiveRevenueCardsContentView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveRevenueCardsContentView, @selector(initWithDataSource:viewModel:), (IMP)&_logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$, (IMP*)&_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$);}Class _logos_class$_ungrouped$BBLiveBaseAppointmentEntryView = objc_getClass("BBLiveBaseAppointmentEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAppointmentEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseAppointmentCardView = objc_getClass("BBLiveBaseAppointmentCardView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAppointmentCardView, @selector(initWithEntryFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$);}Class _logos_class$_ungrouped$BBLiveBasePopularHotRankEntryView = objc_getClass("BBLiveBasePopularHotRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBasePopularHotRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseUserRankListEntryView = objc_getClass("BBLiveBaseUserRankListEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseUserRankListEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBasePopularRankEntryView = objc_getClass("BBLiveBasePopularRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBasePopularRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseAreaRankEntryView = objc_getClass("BBLiveBaseAreaRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAreaRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseMixedRankEntryView = objc_getClass("BBLiveBaseMixedRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseMixedRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveTopRightEntranceManager = objc_getClass("BBLiveTopRightEntranceManager"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveTopRightEntranceManager, @selector(init), (IMP)&_logos_method$_ungrouped$BBLiveTopRightEntranceManager$init, (IMP*)&_logos_orig$_ungrouped$BBLiveTopRightEntranceManager$init);}Class _logos_class$_ungrouped$BBLiveChainView = objc_getClass("BBLiveChainView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveChainView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveChainView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveChainView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveFunctionCardTaskManager = objc_getClass("BBLiveFunctionCardTaskManager"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveFunctionCardTaskManager, @selector(init), (IMP)&_logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init, (IMP*)&_logos_orig$_ungrouped$BBLiveFunctionCardTaskManager$init);}Class _logos_class$_ungrouped$BBLiveVerticalCenterBar = objc_getClass("BBLiveVerticalCenterBar"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveVerticalCenterBar, @selector(layoutTopPendantContainerView), (IMP)&_logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView, (IMP*)&_logos_orig$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView);}} }
#line 125 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"
