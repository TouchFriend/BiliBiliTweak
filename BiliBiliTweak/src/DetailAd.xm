// 视频详情页

#import <UIKit/UIKit.h>

@interface BBAdUGCContext : NSObject

@end

// 视频下方广告
%hook BBAdUGCContext

- (id)initWithResovler:(id)resovler {
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 列表广告
%hook BBAdUGCRcmdModel

- (id)initWithModel:(id)model {
    %log((NSString *)@"cxzcxz");
    return nil;
}

- (id)initWithSourceContentAny:(id)any {
    %log((NSString *)@"cxzcxz");
    return nil;
}

%end

// UP主分享好物广告
@interface IGListAdapter : NSObject

/// 广告商品cell的索引
@property (nonatomic, strong) NSIndexPath *njAdMerchandiseViewIndexPath;
// 标记是否刷新过
@property (nonatomic, assign) BOOL njAdMerchandiseViewIndexPathFlag;

- (void)reloadDataWithCompletion:(id)completion;

@end

%hook IGListAdapter

// 广告商品cell的索引
%property (nonatomic, strong) NSIndexPath *njAdMerchandiseViewIndexPath;
// 标记是否刷新过
%property (nonatomic, assign) BOOL njAdMerchandiseViewIndexPathFlag;

- (id)collectionView:(id)view cellForItemAtIndexPath:(NSIndexPath *)path {
    UICollectionViewCell *cell = %orig;
    if ([cell.reuseIdentifier isEqualToString:@"AdMerchandiseViewBBVideoModule.VDViewSectionControllerCell"]) {
//        %log((NSString *)@"cxzcxz1", path);
        // 保存广告商品cell的索引
        self.njAdMerchandiseViewIndexPath = path;
        if (!self.njAdMerchandiseViewIndexPathFlag) {
            self.njAdMerchandiseViewIndexPathFlag = YES;
            [self reloadDataWithCompletion:nil];
        }
        
    }
    return cell;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(NSIndexPath *)path {
    if (path == self.njAdMerchandiseViewIndexPath) {
        %log((NSString *)@"cxzcxz");
        return CGSizeMake(0.0, 0.1);
    }
    return %orig;
}

%end

