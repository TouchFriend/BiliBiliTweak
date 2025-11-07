//
//  NJDetailPlayerAd.xm
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/9/10.
//

// 详情页播放器广告

/*
 BBPlayerWidget // 所有组件都继承BBPlayerWidget
    BBPlayerWidget *superWidget;    // 父组件
    NSArray *subWidgets;            // 子组件
    - (void)willLayoutSubWidgets;   // 即将布局子组件
    - (void)didLayoutSubWidgets;    // 已经布局子组件
 
 
 BBPlayerContext    // 上下文
    BBPlayerControlWidgetService *controlWidgetService; // 控制组建服务
        Class rootWidgetClass; // 根组件类型：BBPlayerControlContainerRootWidget
   
 */

/*
 **************** 半屏-横屏视频 ****************
 
 BBPlayerControlContainerRootWidget //  控制根组件
    BBPlayerWidget *_leftBarWidget;    // 左边条组件：BBPlayerFullScreenLeftWidget
    BBPlayerBeyondBoundsWidget *_btmBarWidget;  // 底部条组件
    - (void)_setupSubWidgets;  // 设置子组件
 
 
 BBPlayerBeyondBoundsWidget // 底部条组件
    NSArray *subWidgets;    // 拥有的子组件
        BBPlayerHalfScreenBottomWidget // 半屏底部组件
 
 **************** 半屏底部组件 ****************
 
 BBPlayerHalfScreenBottomWidget // 半屏底部组件
    BBPlayerFlexContainerWidget *_leftControlWidget;    // 左边控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerPlayAndPauseWidget      // 播放和暂停
            BBPlayerSeekbarWidgetV2         // 时间滑动条
            BBPlayerTimeHintLabelWidget     // 时间提示标签
    BBPlayerFlexContainerWidget *_rightControlWidget;   // 右边控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerSwitchScreenWidget      //  全屏按钮
            BBPlayerBizGotoStoryWidget      //  横屏视频的竖屏全屏按钮
 
 BBPlayerOperationTagWidget
    NSArray *_tagModels;
        BBPlayerCoreOperationTagModel
 
 BBPlayerCoreOperationTagModel
    @property (nonatomic) unsigned long long type;
        type:1      // UP主都在用的宝藏功能
        type:7      // 使用的BGM
 
 **************** 半屏底部组件 ****************
 
 */
/*
 **************** 全屏-横屏视频 ****************
 
 BBPlayerControlContainerRootWidget //  控制根组件
    BBPlayerWidget *_leftBarWidget;    // 左边条组件：BBPlayerFullScreenLeftWidget
    BBPlayerBeyondBoundsWidget *_btmBarWidget;  // 底部条组件
    - (void)_setupSubWidgets;  // 设置子组件
 
 **************** 全屏左边组件 ****************
 
 BBPlayerFullScreenLeftWidget   // 全屏左边组件（横屏）
    BBPlayerFlexContainerWidget *_topControlWidget  // 头部控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerOnlineCounterWidget     // 在线人数
            BBPlayerUpTagWidget             // up主头像
            BBPlayerOperationTagWidget      // 运营标签
 
    BBPlayerFlexContainerWidget *_bottomControlWidget;  // 底部控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerTimeWidget  // 时间组件, 00:00/37:30
 
 **************** 全屏左边组 ****************
 
 **************** 全屏底部组件 ****************
 
 BBPlayerBeyondBoundsWidget // 底部条组件
    NSArray *subWidgets;    // 拥有的子组件
        // 头部
        BBPlayerSeekbarWidgetV2 // 滑动条组件
        // 左边
        BBPlayerPlayAndPauseWidget              // 播放和暂停按钮组件
        BBPlayerFullScreenNextEpisodeWidget     // 全屏下一集组件
        BBPlayerDanmakuSwitchWidget             // 弹幕开关组件
        BBPlayerDanmakuSettingEntranceWidget    // 弹幕设置入口组件
        BBPlayerDanmakuEntranceWidget           // 发送弹幕组件
        // 右边
        BBPlayerVideoQualityWidget                      // 视频质量组件
        BBPlayerLossLessBtnWidget                       // 无损按钮组件
        BBPlayerDolbyBtnWidget                          // 杜比按钮组件
        BBPlayerPlaybackRateWidget                      // 播放速度组件
        BBPlayerFullScreenEpisodeBtnWidget              // 全屏剧集按钮组件
        BBPlayerCaptionWidget                           // 字幕组件
        BBPlayerAIAudioBtnWidget                        // 人工智能音频按钮组件
        BBPlayerInteractiveStoryListEntranceWidget      // 互动故事列表入口组件
 
 **************** 全屏底部组件 ****************
 */
/*
 **************** 半屏-竖屏视频 ****************
 
 */
/*
 **************** 全屏-竖屏视频 ****************
 
 */

/*
 当前播放速度可以从 BBPlayerObject => BBPlayerContext => BBPlayerPlayback => playbackRate
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "BBPlayerPlayerRateModel.h"
#import "BBPlayerObject.h"

%group App

@interface BBPlayerWidget : NSObject

@property (readonly, weak, nonatomic) BBPlayerWidget *superWidget;
@property (readonly, copy, nonatomic) NSArray *subWidgets;

@end

@interface BBPlayerUpTagWidget : NSObject

@end

// 全屏播放时的up主头像（经常误触点了关注😮‍💨）
%hook BBPlayerUpTagWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

@interface BBPlayerPortraitScreenBottomWidget : NSObject

// 全屏播放时的up主头像
- (id)upTagWidget;
// UP主都在用的宝藏功能
- (id)operationTagWidget;

@end

%hook BBPlayerPortraitScreenBottomWidget

// 处理_upTagWidget为nil时的奔溃问题；_secondControlWidget包含_upTagWidget。
- (void)setupFirstControlConstraints {
    BBPlayerWidget *upTagWidget = [self upTagWidget];
    if (upTagWidget) {
        %orig;
    }
}

// 处理_operationTagWidget为nil时的奔溃问题；_firstControlWidget包含_operationTagWidget。
- (void)setupSecondControlConstraints {
    BBPlayerWidget *operationTagWidget = [self operationTagWidget];
    if (operationTagWidget) {
        %orig;
    }
}


%end

// 横屏视频的竖屏全屏按钮
%hook BBPlayerBizGotoStoryWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

@interface BBPlayerCoreOperationTagModel : NSObject

@property (nonatomic) unsigned long long type;

@end


@interface BBPlayerOperationTagService : NSObject

@property (retain, nonatomic) NSArray *tagModels;
// 过滤类型
- (NSSet<NSNumber *> *)nj_filterTypes;

@end

%hook BBPlayerOperationTagService

- (NSArray *)tagModels {
    NSArray *origTagModels = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BBPlayerCoreOperationTagModel *item in origTagModels) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setValue:items forKeyPath:@"_tagModels"];
    return items;
}

%new
- (NSSet<NSNumber *> *)nj_filterTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(1),      // UP主都在用的宝藏功能
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end

/*
%hook BBPlayerFloatingWidgetView

- (id)initWithContext:(id)context rootWidget:(id)widget {
//    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}

%end
 */

/*
%hook BBPlayerNavigationWidget

- (id)initWithContext:(id)context config:(id)config {
    return %orig;
}

- (void)didLayoutSubWidgets {
    %orig;
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
}

- (void)pushWidget:(id)widget animated:(_Bool)animated completion:(id)completion {
    %orig;
}

- (void)addWidget:(id)widget animated:(_Bool)animated completion:(id)completion {
    %orig;
}

%end
 */

/// 视频播放器
@interface IJKFFMoviePlayerControllerFFPlay : NSObject

@property (readonly, nonatomic) float realPlaybackRate;
@property (readonly, nonatomic) float maxPlaybackRate;
@property (nonatomic) float playbackRate;

@end

%hook IJKFFMoviePlayerControllerFFPlay

- (void)setPlaybackRate:(float)playbackRate {
    %orig;
    NSLog(@"%@:%@-%p-%s-inplaybackRate:%lf-playbackRate:%lf-realPlaybackRate%lf-maxPlaybackRate:%lf", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, playbackRate, self.playbackRate, self.realPlaybackRate, self.maxPlaybackRate);
}

- (id)initWithContentURL:(id)url withOptions:(id)options {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}
- (id)initWithContentURLString:(id)urlstring withOptions:(id)options {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}
- (id)initWithMoreContent:(id)content withOptions:(id)options withGLView:(id)glview {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}
- (id)initWithMoreContentString:(id)string withOptions:(id)options withGLView:(id)glview{
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}
- (id)initUsingItemWithOptions:(id)options withGLView:(id)glview {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}


%end

// 播放速度模型
%hook BBPlayerPlayerRateModel

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; value = %f; text = %@>",
            NSStringFromClass([self class]),
            self,
            self.value,
            self.text ?: @"(null)"];
}

%end

@interface VKSettingViewSelectModel : NSObject // (Swift)

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, copy) id selectChangeCallback;
@property (nonatomic, strong) NSNumber *nj_isChangeBlock;

@end

typedef void (^MyBlockType)(long long index, NSArray *array);

%hook VKSettingViewSelectModel

%property (nonatomic, strong) NSNumber *nj_isChangeBlock;

- (id)init {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}

- (void)setName:(NSString *)name {
    NSLog(@"%@:%@-%p-%s-name：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, name);
    %orig;
}

- (NSString *)name {
    id name = %orig;
    if ([name isEqualToString:@"倍速"] && (![self nj_isChangeBlock] || ![[self nj_isChangeBlock] boolValue])) {
        NSLog(@"%@:%@-%p-%s-change rate value", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
        void (^oldCb)(long long index, NSArray *array) = [self selectChangeCallback];
        void (^newCb)(long long index, NSArray *array) = ^(long long index, NSArray *array) {
            NSLog(@"%@:%@-%p-%s-index:%lld-array:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, index, array);
            if (oldCb) {
                oldCb(index, array);
            }
        };
        [self setNj_isChangeBlock:@(1)];
        [self setSelectChangeCallback:newCb];
//        [self setItems:@[@"0.5",@"1.0",@"1.25",@"1.5",@"2.0",@"3.0"]];
    }
    NSLog(@"%@:%@-%p-%s-name：%@-items:%@-selectChangeCallback:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, name, [self items], [self selectChangeCallback]);
    return name;
}

- (void)setItems:(NSArray *)items {
    %orig;
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, items);
}

- (NSArray *)items {
    id items = %orig;
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, items);
    return items;
}

%end

%hook VKSettingVCFlowLayoutAdapter
/*
- (id)init {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}

- (long long)numberOfSectionsInCollectionView:(id)view {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
    return %orig;
}
*/
%end

%hook BBPlayerSupportedPlaybackRate

+ (id)supportedPlaybackRateModelArr {
    id ret = %orig;
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
}

%end

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

%hook VKSettingViewTabModel

- (void)setItems:(NSArray *)items {
    %orig;
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, items);
}

- (void)setSelectedIndex:(long long)selectedIndex {
    %orig;
    NSLog(@"%@:%@-%p-%s-items：%lld", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, selectedIndex);
}

- (void)setSelectChangeCallback:(id)selectChangeCallback {
    %orig;
    NSLog(@"%@:%@-%p-%s-items：%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, selectChangeCallback);
}

%end

%hook NSArray

+ (instancetype)arrayWithObjects:(id *)objects count:(NSUInteger)cnt {
    if (cnt != 6) {
        return %orig;
    }
    NSArray *origArr = %orig(objects, cnt);
    // 用 __autoreleasing 修饰数组元素
    __autoreleasing id oldRates[] = {
        @"0.5",
        @"0.75",
        @"1.0",
        @"1.25",
        @"1.5",
        @"2.0"
    };
    NSUInteger oldRatesCount = sizeof(oldRates) / sizeof(oldRates[0]);
    // 传数组名即可，数组名会退化为指针类型 __autoreleasing id *
    NSArray *oldRatesArr = %orig(oldRates, oldRatesCount);
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
        NSArray *newRatesArr = %orig(newRates, newRatesCount);
        return newRatesArr;
    }
    return origArr;
}

%end

 
%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App, VKSettingViewSelectModel = objc_getClass("_TtC13VKSettingView11SelectModel"),
              VKSettingVCFlowLayoutAdapter = objc_getClass("_TtC13VKSettingViewP33_EC00434726C52C8727469D0B0D494E6128VKSettingVCFlowLayoutAdapter"),
              VKSettingViewTabModel = objc_getClass("_TtC13VKSettingView8TabModel"));
    }
}
