// 搜索结果广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 搜索结果广告
%hook BBAdSearchModel

- (id)init {
    %log((NSString *)nj_logPrefix);
    return nil;
}


+ (id)modelWithMossMessage:(id)message {
    %log((NSString *)nj_logPrefix);
    return nil;
}

%end


/*
 BBSearchCardsProvider.Result.LittleSpecialCell
 BBSearchCardsProvider.Result.LittleSpecialViewModel

 BBAdSearch.AdSearchEffectCell

 dataSource
 BBSearchSwift.ResultViewController

 delegate
 BBSearchSwift.ResultViewController
 
 
%hook ResultViewController

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // BBSearchCardsProvider.Result.LittleSpecialCell
    
    return %orig;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    %log((NSString *)nj_logPrefix);
    return %orig;
}

%end
*/




%ctor {
    %init(
          ResultViewController = objc_getClass("BBSearchSwift.ResultViewController"),
        );
    
}
