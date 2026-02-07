//
//  NJStoryAd.xm
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

// 竖屏模式广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

// 搜索框，比如：搜索·地虎铠甲为什么叫杨幂
%hook BBStoryCreativeEntrance

- (id)init {
    return nil;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
