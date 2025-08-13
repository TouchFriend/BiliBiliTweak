//
//  NJSettingInjectDataProvider.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import "NJSettingInjectDataProvider.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingDefine.h"
#import "NJPluginInfo.h"

@implementation NJSettingInjectDataProvider


/// 要注入的数据
- (NSArray<NJSettingSkullViewModel *> *)injectDatas {
    NSMutableArray *datas = [NSMutableArray array];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:@"masterSwitch"
                                                           cellId:NJ_MASTER_SWITCH_CELL_ID
                                                            title:@"总开关"]];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:@"ShareData"
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"分享数据"]];
    [datas addObject:[self version]];
    return [datas copy];
}

- (NJSettingSkullViewModel *)version {
    NJSettingSkullViewModel *model = [[NJSettingSkullViewModel alloc] initWithBizId:@"AppVersion"
                                                                             cellId:NJ_COMMON_CELL_ID
                                                                              title:@"版本"];
    model.subTitle = [NJPluginInfo versionInfo];
    return model;
}

@end
