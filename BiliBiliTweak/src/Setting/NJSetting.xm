// 设置页面

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import <objc/objc-runtime.h>
#import "NJSettingSkullTableViewCell.h"
#import "NJSettingMasterSwitchTableViewCell.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingSeparatorHeaderView.h"
#import "NJSettingDefine.h"
#import "NJSettingInjectDataProvider.h"


@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

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
    
    UIView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:NJ_SEPARATOR_HEADER_ID];
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
        NJSettingInjectDataProvider *dataProvider = [[NJSettingInjectDataProvider alloc] init];
        datas = [dataProvider injectDatas];
        objc_setAssociatedObject(self, @selector(skullDatas), datas, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return datas;
}

// 注册cell
%new
- (void)nj_registerCell:(UITableView *)tableView {
    if (!self.nj_isRegisteredCell || ![self.nj_isRegisteredCell boolValue]) {
        self.nj_isRegisteredCell = @(YES);
        // register cell
        [tableView registerClass:[NJSettingMasterSwitchTableViewCell class] forCellReuseIdentifier:NJ_MASTER_SWITCH_CELL_ID];
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_COMMON_CELL_ID];
        
        // register Header
        [tableView registerClass:[NJSettingSeparatorHeaderView class] forHeaderFooterViewReuseIdentifier:NJ_SEPARATOR_HEADER_ID];
    }
}

%end

