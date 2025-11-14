//
//  NJChangePlaybackRateTool.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/30.
//

#import <Foundation/Foundation.h>
#import "BBPlayerPlayerRateModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJChangePlaybackRateTool : NSObject

- (instancetype)init;

/// 播放速度数组
+ (NSArray<NSString *> *)playbackRates;

/// 播放速度的c数组
/// - Parameter outCount: 数组长度
/// @return 返回播放速度的c数组
+ (__unsafe_unretained id _Nonnull *_Nonnull)playbackRatesCArrayWithCount:(NSUInteger *)outCount;

/// 获取旧的播放速度
/// @return 返回旧的播放速度
+ (NSArray<NSString *> *)oldPlaybackRates;

/// 获取旧的播放速度的c数组
/// @param outCount 数组长度
/// @return 返回的播放速度的c数组
+ (__unsafe_unretained id _Nonnull *_Nonnull)oldPlaybackRatesCArrayWithCount:(NSUInteger *)outCount;

/// 修改播放速度
/// - Parameter rateArray: 旧的的播放速度
/// @return 返回新的播放速度
- (NSArray *)changePlaybackRateWithRateArray:(NSArray *)rateArray;

@end

NS_ASSUME_NONNULL_END
