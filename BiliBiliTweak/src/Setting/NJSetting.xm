// 设置页面

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIApplication+NJCategory.h"

@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

// 保存开关
- (void)nj_autoChange:(UISwitch *)autoSwitch;
// 重启提示
- (void)nj_rebootTip;

@end

%hook BBPhoneSettingMainVC

%new
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == [self numberOfSectionsInTableView:tableView] - 1) {
        return 1;
    }
    return %orig;
}

// 保存开关
%new
- (void)nj_autoChange:(UISwitch *)autoSwitch {
    [NJ_USER_DEFAULTS setBool:autoSwitch.isOn forKey:NJ_MASTER_SWITCH_KEY];
    [self nj_rebootTip];
}

// 重启提示
%new
- (void)nj_rebootTip {
    UIViewController *vc = [UIApplication nj_topMostViewController];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"重启应用生效"
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [vc presentViewController:alert animated:YES completion:^{
        // 当弹窗展示完成后，延迟2秒再自动关闭
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{
            [alert dismissViewControllerAnimated:YES completion:nil];
        });
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    NSString *reuseIdentifier = indexPath.row == 0 ? @"autoRedPacketCellId" : @"exitCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        cell.backgroundColor = [UIColor whiteColor];
        cell.imageView.image = [UIImage imageWithContentsOfFile:NJ_ASSET_PATH(@"skull.png")];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"总开关";
        UISwitch *autoSwitch = [[UISwitch alloc] init];
        cell.accessoryView = autoSwitch;
        autoSwitch.on = NJ_MASTER_SWITCH_VALUE;
        [autoSwitch addTarget:self action:@selector(nj_autoChange:) forControlEvents:UIControlEventValueChanged];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    return 44;
}

%new
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

%new
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}

%new
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}

%end



