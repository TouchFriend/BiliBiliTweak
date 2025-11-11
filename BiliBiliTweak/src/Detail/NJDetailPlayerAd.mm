#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"

























































































































#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "BBPlayerPlayerRateModel.h"
#import "BBPlayerObject.h"


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

@class BBPlayerUpTagWidget; @class NSArray; @class BBPlayerBizGotoStoryWidget; @class VKSettingVCFlowLayoutAdapter; @class VKSettingViewSelectModel; @class BBPlayerPortraitScreenBottomWidget; @class VKSettingViewTabModel; @class IJKFFMoviePlayerControllerFFPlay; @class BBPlayerOperationTagService; @class BBPlayerSupportedPlaybackRate; @class BBPlayerPlayerRateModel; 


#line 127 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"
static BBPlayerUpTagWidget* (*_logos_orig$App$BBPlayerUpTagWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerUpTagWidget* _logos_method$App$BBPlayerUpTagWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static BBPlayerBizGotoStoryWidget* (*_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerBizGotoStoryWidget* _logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static NSArray * (*_logos_orig$App$BBPlayerOperationTagService$tagModels)(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSArray * _logos_method$App$BBPlayerOperationTagService$tagModels(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BBPlayerOperationTagService$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$)(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static NSString * (*_logos_orig$App$BBPlayerPlayerRateModel$description)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$App$VKSettingViewSelectModel$name)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$VKSettingViewTabModel$setItems$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, NSArray *); static void _logos_method$App$VKSettingViewTabModel$setItems$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, NSArray *); static void (*_logos_orig$App$VKSettingViewTabModel$setSelectedIndex$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$App$VKSettingViewTabModel$setSelectedIndex$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$App$VKSettingViewTabModel$setSelectChangeCallback$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$App$VKSettingViewTabModel$setSelectChangeCallback$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static NSArray* (*_logos_meta_orig$App$NSArray$arrayWithObjects$count$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); 

@interface BBPlayerWidget : NSObject

@property (readonly, weak, nonatomic) BBPlayerWidget *superWidget;
@property (readonly, copy, nonatomic) NSArray *subWidgets;

@end

@interface BBPlayerUpTagWidget : NSObject

@end




static BBPlayerUpTagWidget* _logos_method$App$BBPlayerUpTagWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget* __unused self, SEL __unused _cmd, id context) _LOGOS_RETURN_RETAINED {
    return nil;
}



@interface BBPlayerPortraitScreenBottomWidget : NSObject


- (id)upTagWidget;

- (id)operationTagWidget;

@end




static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BBPlayerWidget *upTagWidget = [self upTagWidget];
    if (upTagWidget) {
        _logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(self, _cmd);
    }
}


static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BBPlayerWidget *operationTagWidget = [self operationTagWidget];
    if (operationTagWidget) {
        _logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(self, _cmd);
    }
}







static BBPlayerBizGotoStoryWidget* _logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget* __unused self, SEL __unused _cmd, id context) _LOGOS_RETURN_RETAINED {
    return nil;
}



@interface BBPlayerCoreOperationTagModel : NSObject

@property (nonatomic) unsigned long long type;

@end


@interface BBPlayerOperationTagService : NSObject

@property (retain, nonatomic) NSArray *tagModels;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end



static NSArray * _logos_method$App$BBPlayerOperationTagService$tagModels(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSArray *origTagModels = _logos_orig$App$BBPlayerOperationTagService$tagModels(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BBPlayerCoreOperationTagModel *item in origTagModels) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    
    [self setValue:items forKeyPath:@"_tagModels"];
    return items;
}


static NSSet<NSNumber *> * _logos_method$App$BBPlayerOperationTagService$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(1),      
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}






































@interface IJKFFMoviePlayerControllerFFPlay : NSObject

@property (readonly, nonatomic) float realPlaybackRate;
@property (readonly, nonatomic) float maxPlaybackRate;
@property (nonatomic) float playbackRate;

@end



static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float playbackRate) {
    _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(self, _cmd, playbackRate);
    NSLog(@"%@:%@-%p-%s-inplaybackRate:%lf-playbackRate:%lf-realPlaybackRate%lf-maxPlaybackRate:%lf", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, playbackRate, self.playbackRate, self.realPlaybackRate, self.maxPlaybackRate);
}

static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id url, id options) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(self, _cmd, url, options);
}
static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id urlstring, id options) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(self, _cmd, urlstring, options);
}
static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id content, id options, id glview) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$(self, _cmd, content, options, glview);
}
static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id string, id options, id glview) _LOGOS_RETURN_RETAINED{
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$(self, _cmd, string, options, glview);
}
static IJKFFMoviePlayerControllerFFPlay* _logos_method$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id options, id glview) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$(self, _cmd, options, glview);
}







static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [NSString stringWithFormat:@"<%@: %p; value = %f; text = %@>",
            NSStringFromClass([self class]),
            self,
            self.value,
            self.text ?: @"(null)"];
}



@interface VKSettingViewSelectModel : NSObject 

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, strong) NSNumber *nj_isChangeBlock;

@end



__attribute__((used)) static NSNumber * _logos_property$App$VKSettingViewSelectModel$nj_isChangeBlock(VKSettingViewSelectModel * __unused self, SEL __unused _cmd) { return (NSNumber *)objc_getAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeBlock); }; __attribute__((used)) static void _logos_property$App$VKSettingViewSelectModel$setNj_isChangeBlock(VKSettingViewSelectModel * __unused self, SEL __unused _cmd, NSNumber * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeBlock, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id name = _logos_orig$App$VKSettingViewSelectModel$name(self, _cmd);
    if ([name isEqualToString:@"倍速"] && (![self nj_isChangeBlock] || ![[self nj_isChangeBlock] boolValue])) {
        [self setNj_isChangeBlock:@(1)];
        [self setItems:@[@"0.5",@"1.0",@"1.25",@"1.5",@"2.0",@"3.0"]];
        NSLog(@"%@:%@-%p-%s-name：%@-items:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, name, [self items]);
    }
    return name;
}


 

















static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(self, _cmd);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
}



@interface VKSettingViewTabModel : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic) CGSize itemsSize;
@property (nonatomic, copy) NSArray *items;
@property (nonatomic) long long selectedIndex;
@property (nonatomic, copy) NSString *dynamicSelectedString;
@property (nonatomic) _Bool enableRepeatSelect;
@property (nonatomic, copy) id selectChangeCallback;

- (id)init;

@end



static void _logos_method$App$VKSettingViewTabModel$setItems$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSArray * items) {
    _logos_orig$App$VKSettingViewTabModel$setItems$(self, _cmd, items);
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, items);
}

static void _logos_method$App$VKSettingViewTabModel$setSelectedIndex$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long selectedIndex) {
    _logos_orig$App$VKSettingViewTabModel$setSelectedIndex$(self, _cmd, selectedIndex);
    NSLog(@"%@:%@-%p-%s-items：%lld", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, selectedIndex);
}

static void _logos_method$App$VKSettingViewTabModel$setSelectChangeCallback$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id selectChangeCallback) {
    _logos_orig$App$VKSettingViewTabModel$setSelectChangeCallback$(self, _cmd, selectChangeCallback);
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, selectChangeCallback);
}







static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id * objects, NSUInteger cnt) {
    if (cnt != 6) {
        return _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, objects, cnt);
    }
    NSArray *origArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, objects, cnt);
    
    __autoreleasing id oldRates[] = {
        @"0.5",
        @"0.75",
        @"1.0",
        @"1.25",
        @"1.5",
        @"2.0"
    };
    NSUInteger oldRatesCount = sizeof(oldRates) / sizeof(oldRates[0]);
    
    NSArray *oldRatesArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, oldRates, oldRatesCount);
    if (cnt == 6 && [origArr isEqualToArray:oldRatesArr]) {
        __autoreleasing id newRates[] = {
            @"0.5",
            @"1.0",
            @"1.25",
            @"1.5",
            @"2.0",
            @"3.0"
        };
        NSUInteger newRatesCount = sizeof(newRates) / sizeof(newRates[0]);
        NSArray *newRatesArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, newRates, newRatesCount);
        return newRatesArr;
    }
    return origArr;
}



 


static __attribute__((constructor)) void _logosLocalCtor_01d48f60(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {


        {Class _logos_class$App$BBPlayerUpTagWidget = objc_getClass("BBPlayerUpTagWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerUpTagWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerUpTagWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerUpTagWidget$initWithContext$);}Class _logos_class$App$BBPlayerPortraitScreenBottomWidget = objc_getClass("BBPlayerPortraitScreenBottomWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupFirstControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints);}{ MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupSecondControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints);}Class _logos_class$App$BBPlayerBizGotoStoryWidget = objc_getClass("BBPlayerBizGotoStoryWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerBizGotoStoryWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$);}Class _logos_class$App$BBPlayerOperationTagService = objc_getClass("BBPlayerOperationTagService"); { MSHookMessageEx(_logos_class$App$BBPlayerOperationTagService, @selector(tagModels), (IMP)&_logos_method$App$BBPlayerOperationTagService$tagModels, (IMP*)&_logos_orig$App$BBPlayerOperationTagService$tagModels);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BBPlayerOperationTagService, @selector(nj_filterTypes), (IMP)&_logos_method$App$BBPlayerOperationTagService$nj_filterTypes, _typeEncoding); }Class _logos_class$App$IJKFFMoviePlayerControllerFFPlay = objc_getClass("IJKFFMoviePlayerControllerFFPlay"); { MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(setPlaybackRate:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$);}{ MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(initWithContentURL:withOptions:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$);}{ MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(initWithContentURLString:withOptions:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$);}{ MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(initWithMoreContent:withOptions:withGLView:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContent$withOptions$withGLView$);}{ MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(initWithMoreContentString:withOptions:withGLView:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initWithMoreContentString$withOptions$withGLView$);}{ MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(initUsingItemWithOptions:withGLView:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$initUsingItemWithOptions$withGLView$);}Class _logos_class$App$BBPlayerPlayerRateModel = objc_getClass("BBPlayerPlayerRateModel"); { MSHookMessageEx(_logos_class$App$BBPlayerPlayerRateModel, @selector(description), (IMP)&_logos_method$App$BBPlayerPlayerRateModel$description, (IMP*)&_logos_orig$App$BBPlayerPlayerRateModel$description);}Class _logos_class$App$VKSettingViewSelectModel = objc_getClass("_TtC13VKSettingView11SelectModel"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSNumber\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$VKSettingViewSelectModel, "nj_isChangeBlock", _attributes, attrc); size_t _nBytes = 1024; char _typeEncoding[_nBytes]; snprintf(_typeEncoding, _nBytes, "%s@:", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(nj_isChangeBlock), (IMP)&_logos_property$App$VKSettingViewSelectModel$nj_isChangeBlock, _typeEncoding); snprintf(_typeEncoding, _nBytes, "v@:%s", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(setNj_isChangeBlock:), (IMP)&_logos_property$App$VKSettingViewSelectModel$setNj_isChangeBlock, _typeEncoding); } { MSHookMessageEx(_logos_class$App$VKSettingViewSelectModel, @selector(name), (IMP)&_logos_method$App$VKSettingViewSelectModel$name, (IMP*)&_logos_orig$App$VKSettingViewSelectModel$name);}Class _logos_class$App$BBPlayerSupportedPlaybackRate = objc_getClass("BBPlayerSupportedPlaybackRate"); Class _logos_metaclass$App$BBPlayerSupportedPlaybackRate = object_getClass(_logos_class$App$BBPlayerSupportedPlaybackRate); { MSHookMessageEx(_logos_metaclass$App$BBPlayerSupportedPlaybackRate, @selector(supportedPlaybackRateModelArr), (IMP)&_logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr, (IMP*)&_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr);}Class _logos_class$App$VKSettingViewTabModel = objc_getClass("_TtC13VKSettingView8TabModel"); { MSHookMessageEx(_logos_class$App$VKSettingViewTabModel, @selector(setItems:), (IMP)&_logos_method$App$VKSettingViewTabModel$setItems$, (IMP*)&_logos_orig$App$VKSettingViewTabModel$setItems$);}{ MSHookMessageEx(_logos_class$App$VKSettingViewTabModel, @selector(setSelectedIndex:), (IMP)&_logos_method$App$VKSettingViewTabModel$setSelectedIndex$, (IMP*)&_logos_orig$App$VKSettingViewTabModel$setSelectedIndex$);}{ MSHookMessageEx(_logos_class$App$VKSettingViewTabModel, @selector(setSelectChangeCallback:), (IMP)&_logos_method$App$VKSettingViewTabModel$setSelectChangeCallback$, (IMP*)&_logos_orig$App$VKSettingViewTabModel$setSelectChangeCallback$);}Class _logos_class$App$NSArray = objc_getClass("NSArray"); Class _logos_metaclass$App$NSArray = object_getClass(_logos_class$App$NSArray); { MSHookMessageEx(_logos_metaclass$App$NSArray, @selector(arrayWithObjects:count:), (IMP)&_logos_meta_method$App$NSArray$arrayWithObjects$count$, (IMP*)&_logos_meta_orig$App$NSArray$arrayWithObjects$count$);}}
    }
}
