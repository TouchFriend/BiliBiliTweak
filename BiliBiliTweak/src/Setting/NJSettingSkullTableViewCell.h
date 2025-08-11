//
//  NJSettingSkullTableViewCell.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import <UIKit/UIKit.h>
#import "NJSettingSkullViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSkullTableViewCell : UITableViewCell

/// 标题
@property (nonatomic, strong, readonly) UILabel *titleLabel;
/// 数据
@property (nonatomic, strong, readonly) NJSettingSkullViewModel *viewModle;

- (void)bindViewModel:(NJSettingSkullViewModel *)viewModle;

@end

NS_ASSUME_NONNULL_END
