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

/// 修改播放速度
/// - Parameter rateArray: 修改后的播放速度
- (NSArray *)changePlaybackRateWithRateArray:(NSArray *)rateArray;

@end

NS_ASSUME_NONNULL_END
