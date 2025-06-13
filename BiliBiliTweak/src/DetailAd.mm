#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BBAdUGCContext : NSObject

@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBAdUGCContext; @class BBAdUGCRcmdModel; @class BBAdSourceContent; @class IGListAdapter; @class BBAdCommonBaseModel; 
static BBAdUGCContext* (*_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$)(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static id _logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static CGSize (*_logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, id, id, NSIndexPath *); static CGSize _logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, id, id, NSIndexPath *); static BBAdSourceContent* (*_logos_orig$_ungrouped$BBAdSourceContent$init)(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); 

#line 11 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"


static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext* __unused self, SEL __unused _cmd, id resovler) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCContext: %p> initWithResovler:%@]: %@", self, resovler, ((NSString *)nj_logPrefix));
    return nil;
}






static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id model) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithModel:%@]: %@", self, model, ((NSString *)nj_logPrefix));
    return nil;
}

static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id any) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithSourceContentAny:%@]: %@", self, any, ((NSString *)nj_logPrefix));
    return nil;
}




@interface IGListAdapter : NSObject


@property (nonatomic, strong) NSIndexPath *nj_adMerchandiseViewIndexPath;

- (void)reloadDataWithCompletion:(id)completion;

@end




__attribute__((used)) static NSIndexPath * _logos_property$_ungrouped$IGListAdapter$nj_adMerchandiseViewIndexPath(IGListAdapter * __unused self, SEL __unused _cmd) { return (NSIndexPath *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$IGListAdapter$nj_adMerchandiseViewIndexPath); }; __attribute__((used)) static void _logos_property$_ungrouped$IGListAdapter$setNj_adMerchandiseViewIndexPath(IGListAdapter * __unused self, SEL __unused _cmd, NSIndexPath * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$IGListAdapter$nj_adMerchandiseViewIndexPath, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static id _logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * view, NSIndexPath * path) {
    UICollectionViewCell *cell = _logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(self, _cmd, view, path);
    if ([cell.reuseIdentifier isEqualToString:@"AdMerchandiseViewBBVideoModule.VDViewSectionControllerCell"]) {

        if (!self.nj_adMerchandiseViewIndexPath) {
            
            self.nj_adMerchandiseViewIndexPath = path;
            [self reloadDataWithCompletion:nil];
        }
        
    }
    return cell;
}

static CGSize _logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id view, id layout, NSIndexPath * path) {
    if (path == self.nj_adMerchandiseViewIndexPath) {
        NSLog(@"-[<IGListAdapter: %p> collectionView:%@ layout:%@ sizeForItemAtIndexPath:%@]: %@", self, view, layout, path, ((NSString *)nj_logPrefix));
        return CGSizeMake(0.0, 0.1);
    }
    return _logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(self, _cmd, view, layout, path);
}






static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdSourceContent: %p> init]: %@", self, ((NSString *)nj_logPrefix));
    return nil;
}





static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    NSLog(@"+[<BBAdCommonBaseModel: %p> modelWithMossMessage:%@]: %@", self, message, ((NSString *)nj_logPrefix));
    return nil;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBAdUGCContext = objc_getClass("BBAdUGCContext"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCContext, @selector(initWithResovler:), (IMP)&_logos_method$_ungrouped$BBAdUGCContext$initWithResovler$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$);}Class _logos_class$_ungrouped$BBAdUGCRcmdModel = objc_getClass("BBAdUGCRcmdModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithModel:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithSourceContentAny:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$);}Class _logos_class$_ungrouped$IGListAdapter = objc_getClass("IGListAdapter"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSIndexPath\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$IGListAdapter, "nj_adMerchandiseViewIndexPath", _attributes, attrc); size_t _nBytes = 1024; char _typeEncoding[_nBytes]; snprintf(_typeEncoding, _nBytes, "%s@:", @encode(NSIndexPath *)); class_addMethod(_logos_class$_ungrouped$IGListAdapter, @selector(nj_adMerchandiseViewIndexPath), (IMP)&_logos_property$_ungrouped$IGListAdapter$nj_adMerchandiseViewIndexPath, _typeEncoding); snprintf(_typeEncoding, _nBytes, "v@:%s", @encode(NSIndexPath *)); class_addMethod(_logos_class$_ungrouped$IGListAdapter, @selector(setNj_adMerchandiseViewIndexPath:), (IMP)&_logos_property$_ungrouped$IGListAdapter$setNj_adMerchandiseViewIndexPath, _typeEncoding); } { MSHookMessageEx(_logos_class$_ungrouped$IGListAdapter, @selector(collectionView:cellForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$IGListAdapter, @selector(collectionView:layout:sizeForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$);}Class _logos_class$_ungrouped$BBAdSourceContent = objc_getClass("BBAdSourceContent"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdSourceContent, @selector(init), (IMP)&_logos_method$_ungrouped$BBAdSourceContent$init, (IMP*)&_logos_orig$_ungrouped$BBAdSourceContent$init);}Class _logos_class$_ungrouped$BBAdCommonBaseModel = objc_getClass("BBAdCommonBaseModel"); Class _logos_metaclass$_ungrouped$BBAdCommonBaseModel = object_getClass(_logos_class$_ungrouped$BBAdCommonBaseModel); { MSHookMessageEx(_logos_metaclass$_ungrouped$BBAdCommonBaseModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$);}} }
#line 93 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"
