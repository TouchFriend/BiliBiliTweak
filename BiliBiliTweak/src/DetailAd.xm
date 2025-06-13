// 视频详情页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BBAdUGCContext : NSObject

@end

// 视频下方广告
%hook BBAdUGCContext

- (id)initWithResovler:(id)resovler {
    %log((NSString *)nj_logPrefix);
    return nil;
}

%end

// 列表广告
%hook BBAdUGCRcmdModel

- (id)initWithModel:(id)model {
    %log((NSString *)nj_logPrefix);
    return nil;
}

- (id)initWithSourceContentAny:(id)any {
    %log((NSString *)nj_logPrefix);
    return nil;
}

%end

// UP主分享好物广告
@interface IGListAdapter : NSObject

/// 广告商品cell的索引
@property (nonatomic, strong) NSIndexPath *nj_adMerchandiseViewIndexPath;

- (void)reloadDataWithCompletion:(id)completion;

@end

%hook IGListAdapter

// 广告商品cell的索引
%property (nonatomic, strong) NSIndexPath *nj_adMerchandiseViewIndexPath;

- (id)collectionView:(UICollectionView *)view cellForItemAtIndexPath:(NSIndexPath *)path {
    UICollectionViewCell *cell = %orig;
    if ([cell.reuseIdentifier isEqualToString:@"AdMerchandiseViewBBVideoModule.VDViewSectionControllerCell"]) {
//         %log((NSString *)@"cxzcxz", path, self.nj_adMerchandiseViewIndexPath);
        if (!self.nj_adMerchandiseViewIndexPath) {
            // 保存广告商品cell的索引
            self.nj_adMerchandiseViewIndexPath = path;
            [self reloadDataWithCompletion:nil];
        }
        
    }
    return cell;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(NSIndexPath *)path {
    if (path == self.nj_adMerchandiseViewIndexPath) {
        %log((NSString *)nj_logPrefix);
        return CGSizeMake(0.0, 0.1);
    }
    return %orig;
}

%end

// 评论顶部黄色广告条
%hook BBAdSourceContent

- (id)init {
    %log((NSString *)nj_logPrefix);
    return nil;
}

%end

%hook BBAdCommonBaseModel

+ (id)modelWithMossMessage:(id)message {
    %log((NSString *)nj_logPrefix);
    return nil;
}


%end
