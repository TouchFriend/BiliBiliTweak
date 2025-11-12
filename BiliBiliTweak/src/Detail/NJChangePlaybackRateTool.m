//
//  NJChangePlaybackRateTool.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/30.
//

#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"

static const double NJChangePlaybackRateFlag = 3.0;

@interface NJChangePlaybackRateTool ()

/// 播放速度
@property (nonatomic, strong) NSArray<NSString *> *playbackRates;

@end

@implementation NJChangePlaybackRateTool

#pragma mark - Life Cycle Methods

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    self.playbackRates = @[@"0.5", @"1.0", @"1.25", @"1.5", @"2.0", @"3.0"];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSArray *)changePlaybackRateWithRateArray:(NSArray *)rateArray {
    if (![self shouldChange:rateArray]) {
        return rateArray;
    }
//    NSLog(@"[%@] change before rateArray = %@, class:%@", nj_logPrefix, rateArray, NSStringFromClass([rateArray class]));
    NSInteger rateCount = rateArray.count;
    NSInteger newRateCount = self.playbackRates.count;
    NSInteger count = MIN(rateCount, newRateCount);
    for (NSInteger i = 0; i < count; i++) {
        BBPlayerPlayerRateModel *rateModel = rateArray[i];
        NSString *newRateStr = self.playbackRates[i];
        rateModel.value = newRateStr.doubleValue;
        rateModel.text = newRateStr;
    }
//    NSLog(@"[%@] change after rateArray = %@, class:%@", nj_logPrefix, rateArray, NSStringFromClass([rateArray class]));
    return rateArray;
}




#pragma mark - Private Methods

- (BOOL)shouldChange:(NSArray *)rateArray {
    BOOL flag = YES;
    for (BBPlayerPlayerRateModel *item in rateArray) {
        if (item.value == NJChangePlaybackRateFlag) {
            flag = NO;
            break;
        }
    }
    return flag;
}

#pragma mark - Property Methods




@end
