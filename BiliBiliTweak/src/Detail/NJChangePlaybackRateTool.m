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
    self.playbackRates = [[self class] playbackRates];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

+ (NSArray<NSString *> *)playbackRates {
    NSUInteger count = 0;
    __unsafe_unretained id *cArray = [self playbackRatesCArrayWithCount:&count];
    NSArray<NSString *> *ratesArray = [NSArray arrayWithObjects:cArray count:count];
    return ratesArray;
}

+ (__unsafe_unretained id *)playbackRatesCArrayWithCount:(NSUInteger *)outCount {
    static __unsafe_unretained id newRates[6];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        newRates[0] = @"0.5";
        newRates[1] = @"1.0";
        newRates[2] = @"1.25";
        newRates[3] = @"1.5";
        newRates[4] = @"2.0";
        newRates[5] = @"3.0";
    });
    
    if (outCount) {
        *outCount = sizeof(newRates) / sizeof(newRates[0]);
    }
    
    return newRates;
}



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
