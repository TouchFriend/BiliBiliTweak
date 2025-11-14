#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"

























































































































#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "BBPlayerPlayerRateModel.h"
#import "BBPlayerObject.h"
#import "NJChangePlaybackRateTool.h"


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

@class IJKFFMoviePlayerControllerFFPlay; @class BBPlayerPlayerRateModel; @class BBPlayerOperationTagService; @class BBPlayerSupportedPlaybackRate; @class NSArray; @class BBPlayerUpTagWidget; @class BBPlayerBizGotoStoryWidget; @class BBPlayerPortraitScreenBottomWidget; @class VKSettingViewSelectModel; 


#line 128 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"
static BBPlayerUpTagWidget* (*_logos_orig$App$BBPlayerUpTagWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerUpTagWidget* _logos_method$App$BBPlayerUpTagWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static BBPlayerBizGotoStoryWidget* (*_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerBizGotoStoryWidget* _logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static NSArray * (*_logos_orig$App$BBPlayerOperationTagService$tagModels)(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSArray * _logos_method$App$BBPlayerOperationTagService$tagModels(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BBPlayerOperationTagService$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$)(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static NSString * (*_logos_orig$App$BBPlayerPlayerRateModel$description)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$App$VKSettingViewSelectModel$name)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSArray* (*_logos_meta_orig$App$NSArray$arrayWithObjects$count$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); 

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
    NSLog(@"%@:%@-%p-%s-inputPlaybackRate:%lf-changedPlaybackRate:%lf-realPlaybackRate%lf-maxPlaybackRate:%lf", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, playbackRate, self.playbackRate, self.realPlaybackRate, self.maxPlaybackRate);
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
@property (nonatomic, strong) NSNumber *nj_isChangeFlag;

@end




__attribute__((used)) static NSNumber * _logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag(VKSettingViewSelectModel * __unused self, SEL __unused _cmd) { return (NSNumber *)objc_getAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag); }; __attribute__((used)) static void _logos_property$App$VKSettingViewSelectModel$setNj_isChangeFlag(VKSettingViewSelectModel * __unused self, SEL __unused _cmd, NSNumber * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *name = _logos_orig$App$VKSettingViewSelectModel$name(self, _cmd);
    if ([name isEqualToString:@"倍速"] && (![self nj_isChangeFlag] || ![[self nj_isChangeFlag] boolValue])) {
        [self setNj_isChangeFlag:@(1)];
        [self setItems:[NJChangePlaybackRateTool playbackRates]];
    }
    return name;
}






static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(self, _cmd);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
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
        NSUInteger newRatesCount = 0;
        __unsafe_unretained id *newRates = [NJChangePlaybackRateTool playbackRatesCArrayWithCount:&newRatesCount];
        __autoreleasing id newRatesCopy[newRatesCount];
        for (NSUInteger i = 0; i < newRatesCount; i++) {
            newRatesCopy[i] = newRates[i];
        }
        NSArray *newRatesArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, newRatesCopy, newRatesCount);
        return newRatesArr;
    }
    return origArr;
}



 


static __attribute__((constructor)) void _logosLocalCtor_b8498dde(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {

        {Class _logos_class$App$BBPlayerUpTagWidget = objc_getClass("BBPlayerUpTagWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerUpTagWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerUpTagWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerUpTagWidget$initWithContext$);}Class _logos_class$App$BBPlayerPortraitScreenBottomWidget = objc_getClass("BBPlayerPortraitScreenBottomWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupFirstControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints);}{ MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupSecondControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints);}Class _logos_class$App$BBPlayerBizGotoStoryWidget = objc_getClass("BBPlayerBizGotoStoryWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerBizGotoStoryWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$);}Class _logos_class$App$BBPlayerOperationTagService = objc_getClass("BBPlayerOperationTagService"); { MSHookMessageEx(_logos_class$App$BBPlayerOperationTagService, @selector(tagModels), (IMP)&_logos_method$App$BBPlayerOperationTagService$tagModels, (IMP*)&_logos_orig$App$BBPlayerOperationTagService$tagModels);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BBPlayerOperationTagService, @selector(nj_filterTypes), (IMP)&_logos_method$App$BBPlayerOperationTagService$nj_filterTypes, _typeEncoding); }Class _logos_class$App$IJKFFMoviePlayerControllerFFPlay = objc_getClass("IJKFFMoviePlayerControllerFFPlay"); { MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(setPlaybackRate:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$);}Class _logos_class$App$BBPlayerPlayerRateModel = objc_getClass("BBPlayerPlayerRateModel"); { MSHookMessageEx(_logos_class$App$BBPlayerPlayerRateModel, @selector(description), (IMP)&_logos_method$App$BBPlayerPlayerRateModel$description, (IMP*)&_logos_orig$App$BBPlayerPlayerRateModel$description);}Class _logos_class$App$VKSettingViewSelectModel = objc_getClass("_TtC13VKSettingView11SelectModel"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSNumber\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$VKSettingViewSelectModel, "nj_isChangeFlag", _attributes, attrc); size_t _nBytes = 1024; char _typeEncoding[_nBytes]; snprintf(_typeEncoding, _nBytes, "%s@:", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(nj_isChangeFlag), (IMP)&_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag, _typeEncoding); snprintf(_typeEncoding, _nBytes, "v@:%s", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(setNj_isChangeFlag:), (IMP)&_logos_property$App$VKSettingViewSelectModel$setNj_isChangeFlag, _typeEncoding); } { MSHookMessageEx(_logos_class$App$VKSettingViewSelectModel, @selector(name), (IMP)&_logos_method$App$VKSettingViewSelectModel$name, (IMP*)&_logos_orig$App$VKSettingViewSelectModel$name);}Class _logos_class$App$BBPlayerSupportedPlaybackRate = objc_getClass("BBPlayerSupportedPlaybackRate"); Class _logos_metaclass$App$BBPlayerSupportedPlaybackRate = object_getClass(_logos_class$App$BBPlayerSupportedPlaybackRate); { MSHookMessageEx(_logos_metaclass$App$BBPlayerSupportedPlaybackRate, @selector(supportedPlaybackRateModelArr), (IMP)&_logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr, (IMP*)&_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr);}Class _logos_class$App$NSArray = objc_getClass("NSArray"); Class _logos_metaclass$App$NSArray = object_getClass(_logos_class$App$NSArray); { MSHookMessageEx(_logos_metaclass$App$NSArray, @selector(arrayWithObjects:count:), (IMP)&_logos_meta_method$App$NSArray$arrayWithObjects$count$, (IMP*)&_logos_meta_orig$App$NSArray$arrayWithObjects$count$);}}
    }
}
