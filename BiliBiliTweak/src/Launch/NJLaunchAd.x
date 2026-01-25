// 启动广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BFCSplashLaunchInfo : NSObject

@property (nonatomic) _Bool launchFlag;
@property (nonatomic) _Bool linkAwake;
@property (nonatomic) _Bool inHot;
@property (readonly, nonatomic) unsigned long long launchType;

/* class methods */
+ (id)infoWith:(_Bool)with linkAwake:(_Bool)awake inHot:(_Bool)hot;

@end

%hook BFCSplashLaunchInfo

- (NSString *)description {
    NSString *orig = %orig;
    NSString *ret = [orig stringByAppendingFormat:@"launchFlag: %@,linkAwake:%@,inHot:%@,launchType:%@", @(self.launchFlag), @(self.linkAwake), @(self.inHot), @(self.launchType)];
    return ret;
}

+ (id)infoWith:(_Bool)with linkAwake:(_Bool)awake inHot:(_Bool)hot {
    return %orig(YES, awake, hot);
}

%end

 
%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}

