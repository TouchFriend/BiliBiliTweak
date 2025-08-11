// 设置页面

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIApplication+NJCategory.h"
#import "NJSettingSkullTableViewCell.h"
#import "NJSettingSkullViewModel.h"
#import <objc/objc-runtime.h>

#define NJ_COMMON_CELL_ID @"CommonCellId"
#define NJ_MASTER_SWITCH_CELL_ID @"masterSwitchCellId"

@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

// 保存开关
- (void)nj_autoChange:(UISwitch *)autoSwitch;
// 重启提示
- (void)nj_rebootTip;
// 是否是设置页面
- (BOOL)nj_isSettingViewController;
/// 是否注册过cell
@property (nonatomic, strong) NSNumber *nj_isRegisteredCell;
// 注册cell
- (void)nj_registerCell:(UITableView *)tableView;
// 注入的数据
- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas;


@end

%hook BBPhoneSettingMainVC

// 是否注册过cell
%property (nonatomic, strong) NSNumber *nj_isRegisteredCell;

%new
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (![self nj_isSettingViewController]) {
        return 1;
    }
    // 注册cell
    [self nj_registerCell:tableView];
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self nj_isSettingViewController] &&
        section == [self numberOfSectionsInTableView:tableView] - 1) {
        return [[self nj_injectDatas] count];
    }
    return %orig;
}

// 保存开关
%new
- (void)nj_masterSwitchChange:(UISwitch *)masterSwitch {
    [NJ_USER_DEFAULTS setBool:masterSwitch.isOn forKey:NJ_MASTER_SWITCH_KEY];
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
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    NJSettingSkullViewModel *viewModel = [self nj_injectDatas][indexPath.row];
    NSString *reuseIdentifier = viewModel.cellId;
    NJSettingSkullTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier
                                    forIndexPath:indexPath];
    [cell bindViewModel:viewModel];
    // 总开关
//    if (indexPath.row == 0) {
//        [(NJSettingSkullTableViewCell *)cell setTitle:@"总开关"];
//        UISwitch *masterSwitch = [[UISwitch alloc] init];
//        cell.accessoryView = masterSwitch;
//        masterSwitch.on = NJ_MASTER_SWITCH_VALUE;
//        [masterSwitch addTarget:self action:@selector(nj_masterSwitchChange:) forControlEvents:UIControlEventValueChanged];
//    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    return 44;
}

%new
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

%new
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}

%new
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}

// 是否是设置页面
%new
- (BOOL)nj_isSettingViewController {
    return [self.navigationItem.title isEqualToString:@"设置"];
}

// 注入的数据
%new
- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas {
    NSArray *datas = objc_getAssociatedObject(self, @selector(skullDatas));
    if (!datas) {
        NSMutableArray *arr = [NSMutableArray array];
        [arr addObject:[[NJSettingSkullViewModel alloc] initWithBizId:@"masterSwitch"
                                                               cellId:NJ_MASTER_SWITCH_CELL_ID
                                                                title:@"总开关"]];
        [arr addObject:[[NJSettingSkullViewModel alloc] initWithBizId:@"ShareData"
                                                               cellId:NJ_COMMON_CELL_ID
                                                                title:@"分享数据"]];
        [arr addObject:[[NJSettingSkullViewModel alloc] initWithBizId:@"AppVersion"
                                                               cellId:NJ_COMMON_CELL_ID
                                                                title:@"版本"]];
        datas = [arr copy];
        objc_setAssociatedObject(self, @selector(skullDatas), datas, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return datas;
}

// 注册cell
%new
- (void)nj_registerCell:(UITableView *)tableView {
    if (!self.nj_isRegisteredCell || ![self.nj_isRegisteredCell boolValue]) {
        self.nj_isRegisteredCell = @(YES);
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_MASTER_SWITCH_CELL_ID];
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_COMMON_CELL_ID];
    }
}

%end

