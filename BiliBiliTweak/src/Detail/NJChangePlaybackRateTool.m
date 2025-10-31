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
@property (nonatomic, strong) NSArray<NSNumber *> *playbackRates;

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
    self.playbackRates = @[@0.5, @1.0, @1.25, @1.5, @2.0, @3.0, @4.0, @5.0, @6.0, @7.0];
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
        BBPlayerPlayerRateModel *rateModel = rateArray[rateCount - 1 - i];
        NSNumber *newRate = self.playbackRates[i];
        rateModel.value = newRate.doubleValue;
        NSString *text = [NSString stringWithFormat:@"%.2f", newRate.doubleValue];
        // 去掉末尾多余的 0（例如 1.00 → 1.0）
        while ([text hasSuffix:@"0"] && ![text hasSuffix:@".0"]) {
            text = [text substringToIndex:text.length - 1];
        }
        rateModel.text = text;
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
