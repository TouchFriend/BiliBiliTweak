#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Mine/NJDownload.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


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

@class BFCDownloadBaseEntity; @class BBVDDetailVC; @class BBPhoneDownloadVC; @class BFCDownloadTaskCFNetworkOperation; @class IJKFFMoviePlayerControllerFFPlay; @class IJKDashStreamItem; @class BBResolverMediaPlayerItem; @class BFCDownloadTask; @class BFCDownloadAVEntity; @class BBPhoneVideoParserResolve; @class BBPlayerViewController; @class BBPhoneBaseListVM; @class IJKMediaPlayerItem; @class BFCDownloadManager; 
static double (*_logos_orig$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneDownloadVC* _LOGOS_SELF_CONST, SEL, id, id); static double _logos_method$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneDownloadVC* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$loadMoreData)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$BBPhoneBaseListVM$loadMoreData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id, _Bool); static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id, _Bool); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$addObject$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObject$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void _logos_method$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static _Bool (*_logos_orig$_ungrouped$BBPhoneBaseListVM$hasObjects)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$BBPhoneBaseListVM$hasObjects(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$BBPhoneBaseListVM$isNoData)(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$BBPhoneBaseListVM$isNoData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BBVDDetailVC$setParams$)(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void _logos_method$_ungrouped$BBVDDetailVC$setParams$(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void (*_logos_orig$_ungrouped$BBVDDetailVC$setPvExtras$)(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void _logos_method$_ungrouped$BBVDDetailVC$setPvExtras$(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST, SEL, NSDictionary *); static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL, id, id) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* (*_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init)(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL) _LOGOS_RETURN_RETAINED; static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay*, SEL) _LOGOS_RETURN_RETAINED; static BBPlayerViewController* (*_logos_orig$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerViewController*, SEL, unsigned long long, id, _Bool) _LOGOS_RETURN_RETAINED; static BBPlayerViewController* _logos_method$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$(_LOGOS_SELF_TYPE_INIT BBPlayerViewController*, SEL, unsigned long long, id, _Bool) _LOGOS_RETURN_RETAINED; static NSString * (*_logos_orig$_ungrouped$IJKDashStreamItem$baseUrl)(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$IJKDashStreamItem$baseUrl(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$IJKDashStreamItem$backupUrl0)(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$IJKDashStreamItem$backupUrl0(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$IJKDashStreamItem$backupUrl1)(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$IJKDashStreamItem$backupUrl1(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST, SEL); static IJKDashStreamItem* (*_logos_orig$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$)(_LOGOS_SELF_TYPE_INIT IJKDashStreamItem*, SEL, int, int, id, long long) _LOGOS_RETURN_RETAINED; static IJKDashStreamItem* _logos_method$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$(_LOGOS_SELF_TYPE_INIT IJKDashStreamItem*, SEL, int, int, id, long long) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$)(_LOGOS_SELF_TYPE_NORMAL IJKMediaPlayerItem* _LOGOS_SELF_CONST, SEL, id, int, _Bool); static id _logos_method$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$(_LOGOS_SELF_TYPE_NORMAL IJKMediaPlayerItem* _LOGOS_SELF_CONST, SEL, id, int, _Bool); static id (*_logos_meta_orig$_ungrouped$BFCDownloadManager$downloadFolder)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$BFCDownloadManager$downloadFolder(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BFCDownloadManager$bindParserResolver$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BFCDownloadManager$bindParserResolver$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BFCDownloadManager$bindNetworkResolver$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BFCDownloadManager$bindNetworkResolver$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, long long); static void _logos_method$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, long long); static _Bool (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id *); static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id *); static _Bool (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, id *); static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, id *); static _Bool (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, id *); static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id, id *); static id (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, long long, id, id, id *); static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, long long, id, id, id *); static id (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, long long, id, id, id *); static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, long long, id, id, id *); static id (*_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id *); static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST, SEL, id, id, id, id *); static BFCDownloadTaskCFNetworkOperation* (*_logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$)(_LOGOS_SELF_TYPE_INIT BFCDownloadTaskCFNetworkOperation*, SEL, id) _LOGOS_RETURN_RETAINED; static BFCDownloadTaskCFNetworkOperation* _logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$(_LOGOS_SELF_TYPE_INIT BFCDownloadTaskCFNetworkOperation*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadTaskCFNetworkOperation* _LOGOS_SELF_CONST, SEL, id, id, id, id); static void _logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadTaskCFNetworkOperation* _LOGOS_SELF_CONST, SEL, id, id, id, id); static void (*_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadCoverWithDownloadStartBlock$withDownloadEndBlock$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadCoverWithDownloadStartBlock$withDownloadEndBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadCRONPackageWithDownloadStartBlock$downloadEndBlock$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadCRONPackageWithDownloadStartBlock$downloadEndBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithUpdateTag$startBlock$stateBlock$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, _Bool, id, id); static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithUpdateTag$startBlock$stateBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, _Bool, id, id); static void (*_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$)(_LOGOS_SELF_TYPE_NORMAL BFCDownloadBaseEntity* _LOGOS_SELF_CONST, SEL, long long, long long, id, id); static void _logos_method$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadBaseEntity* _LOGOS_SELF_CONST, SEL, long long, long long, id, id); 

#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Mine/NJDownload.xm"


static double _logos_method$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneDownloadVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id view, id path) {
    return _logos_orig$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$(self, _cmd, view, path);
}





static void _logos_method$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData(self, _cmd);
}
static void _logos_method$_ungrouped$BBPhoneBaseListVM$loadMoreData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$loadMoreData(self, _cmd);
}

static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id array, _Bool duplicate) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$(self, _cmd, array, duplicate);
}

static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObject$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id object) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$addObject$(self, _cmd, object);
}

static void _logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id array) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$(self, _cmd, array);
}

static void _logos_method$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id object, unsigned long long index) {
    _logos_orig$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$(self, _cmd, object, index);
}

static _Bool _logos_method$_ungrouped$BBPhoneBaseListVM$hasObjects(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return _logos_orig$_ungrouped$BBPhoneBaseListVM$hasObjects(self, _cmd);
}
static _Bool _logos_method$_ungrouped$BBPhoneBaseListVM$isNoData(_LOGOS_SELF_TYPE_NORMAL BBPhoneBaseListVM* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return _logos_orig$_ungrouped$BBPhoneBaseListVM$isNoData(self, _cmd);
}






static void _logos_method$_ungrouped$BBVDDetailVC$setParams$(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSDictionary * params) {
    _logos_orig$_ungrouped$BBVDDetailVC$setParams$(self, _cmd, params);
}

static void _logos_method$_ungrouped$BBVDDetailVC$setPvExtras$(_LOGOS_SELF_TYPE_NORMAL BBVDDetailVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSDictionary * pvExtras) {
    _logos_orig$_ungrouped$BBVDDetailVC$setPvExtras$(self, _cmd, pvExtras);
}





static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id url, id options) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$(self, _cmd, url, options);
}

static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd, id urlstring, id options) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$(self, _cmd, urlstring, options);
}

static IJKFFMoviePlayerControllerFFPlay* _logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init(_LOGOS_SELF_TYPE_INIT IJKFFMoviePlayerControllerFFPlay* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init(self, _cmd);
}





static BBPlayerViewController* _logos_method$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$(_LOGOS_SELF_TYPE_INIT BBPlayerViewController* __unused self, SEL __unused _cmd, unsigned long long mode, id options, _Bool context) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$(self, _cmd, mode, options, context);
}




static NSString * _logos_method$_ungrouped$IJKDashStreamItem$baseUrl(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_orig$_ungrouped$IJKDashStreamItem$baseUrl(self, _cmd);
    return ret;
}

static NSString * _logos_method$_ungrouped$IJKDashStreamItem$backupUrl0(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_orig$_ungrouped$IJKDashStreamItem$backupUrl0(self, _cmd);
    return ret;
}

static NSString * _logos_method$_ungrouped$IJKDashStreamItem$backupUrl1(_LOGOS_SELF_TYPE_NORMAL IJKDashStreamItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_orig$_ungrouped$IJKDashStreamItem$backupUrl1(self, _cmd);
    return ret;
}

static IJKDashStreamItem* _logos_method$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$(_LOGOS_SELF_TYPE_INIT IJKDashStreamItem* __unused self, SEL __unused _cmd, int streamId, int bandwidth, id url, long long size) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$(self, _cmd, streamId, bandwidth, url, size);
}





static id _logos_method$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$(_LOGOS_SELF_TYPE_NORMAL IJKMediaPlayerItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id asset, int counter, _Bool prefix) {
    id ret = _logos_orig$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$(self, _cmd, asset, counter, prefix);
    return ret;
}





static id _logos_meta_method$_ungrouped$BFCDownloadManager$downloadFolder(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_meta_orig$_ungrouped$BFCDownloadManager$downloadFolder(self, _cmd);
    return ret;
}

static void _logos_method$_ungrouped$BFCDownloadManager$bindParserResolver$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id resolver) {
    NSLog(@"-[<BFCDownloadManager: %p> bindParserResolver:%@]: %@", self, resolver, (nj_logPrefix));
    _logos_orig$_ungrouped$BFCDownloadManager$bindParserResolver$(self, _cmd, resolver);
}

static void _logos_method$_ungrouped$BFCDownloadManager$bindNetworkResolver$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id resolver) {
    NSLog(@"-[<BFCDownloadManager: %p> bindNetworkResolver:%@]: %@", self, resolver, (nj_logPrefix));
    _logos_orig$_ungrouped$BFCDownloadManager$bindNetworkResolver$(self, _cmd, resolver);
}





static void _logos_method$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id cache, id item, id info, id audioInfo, long long tyoe) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> saveCache:%@ item:%@ videoInfo:%@ audioInfo:%@ audioTyoe:%lld]: %@", self, cache, item, info, audioInfo, tyoe, (nj_logPrefix));
    _logos_orig$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$(self, _cmd, cache, item, info, audioInfo, tyoe);
}

static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id entity, id * error) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> updateEntity:%@ error:%p]: %@", self, entity, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$(self, _cmd, entity, error);
}
static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id aventity, id item, id info, id audioInfo, id * error)  {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> updateAVEntity:%@ item:%@ videoInfo:%@ audioInfo:%@ error:%p]: %@", self, aventity, item, info, audioInfo, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$(self, _cmd, aventity, item, info, audioInfo, error);
}
static _Bool _logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id entity, id item, id info, id audioInfo, id * error) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> updateEpEntity:%@ item:%@ videoInfo:%@ audioInfo:%@ error:%p]: %@", self, entity, item, info, audioInfo, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$(self, _cmd, entity, item, info, audioInfo, error);
}
static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long count, id key, id extra, id * error) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> getEntitySectionUrlWithCount:%lld entityKey:%@ extra:%@ error:%p]: %@", self, count, key, extra, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$(self, _cmd, count, key, extra, error);
}
static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long count, id key, id extra, id * error) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> getEntitySectionUrlsWithCount:%lld entityKey:%@ extra:%@ error:%p]: %@", self, count, key, extra, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$(self, _cmd, count, key, extra, error);
}
static id _logos_method$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$(_LOGOS_SELF_TYPE_NORMAL BBPhoneVideoParserResolve* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id url, id key, id from, id * error) {
    NSLog(@"-[<BBPhoneVideoParserResolve: %p> getFreeUnicomUrl:%@ entityKey:%@ from:%@ error:%p]: %@", self, url, key, from, error, (nj_logPrefix));
    return _logos_orig$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$(self, _cmd, url, key, from, error);
}


 











static BFCDownloadTaskCFNetworkOperation* _logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$(_LOGOS_SELF_TYPE_INIT BFCDownloadTaskCFNetworkOperation* __unused self, SEL __unused _cmd, id task) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BFCDownloadTaskCFNetworkOperation: %p> initWithTask:%@]: %@", self, task, (nj_logPrefix));
    return _logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$(self, _cmd, task);
}

static void _logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadTaskCFNetworkOperation* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id urls, id option, id progress, id handle) {
    NSLog(@"-[<BFCDownloadTaskCFNetworkOperation: %p> startWithTargetUrls:%@ option:%@ progress:%@ compleHandle:%@]: %@", self, urls, option, progress, handle, (nj_logPrefix));
    _logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$(self, _cmd, urls, option, progress, handle);
}






















static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadCoverWithDownloadStartBlock$withDownloadEndBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id block, id withDownloadEndBlock) {
    NSLog(@"-[<BFCDownloadAVEntity: %p> downloadCoverWithDownloadStartBlock:%@ withDownloadEndBlock:%@]: %@", self, block, withDownloadEndBlock, (nj_logPrefix));

}
static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadCRONPackageWithDownloadStartBlock$downloadEndBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id block, id downloadEndBlock) {
    NSLog(@"-[<BFCDownloadAVEntity: %p> downloadCRONPackageWithDownloadStartBlock:%@ downloadEndBlock:%@]: %@", self, block, downloadEndBlock, (nj_logPrefix));

}

static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithUpdateTag$startBlock$stateBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool tag, id block, id stateBlock) {
    NSLog(@"-[<BFCDownloadAVEntity: %p> downloadDanmakuWithUpdateTag:%d startBlock:%@ stateBlock:%@]: %@", self, tag, block, stateBlock, (nj_logPrefix));

}
static void _logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id block) {
    NSLog(@"-[<BFCDownloadAVEntity: %p> downloadDanmakuWithDownloadStartBlock:%@]: %@", self, block, (nj_logPrefix));
    _logos_orig$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$(self, _cmd, block);
}

static id _logos_method$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath(_LOGOS_SELF_TYPE_NORMAL BFCDownloadAVEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_orig$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath(self, _cmd);
    NSLog(@"%@:%@-%p-%s-getCRONPackagePath:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
}





static void _logos_method$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$(_LOGOS_SELF_TYPE_NORMAL BFCDownloadBaseEntity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long avid, long long cid, id existed, id block) {
    NSLog(@"-[<BFCDownloadBaseEntity: %p> fetchCRONPackageDataWithAvid:%lld cid:%lld cronPackageExisted:%@ endBlock:%@]: %@", self, avid, cid, existed, block, (nj_logPrefix));
    _logos_orig$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$(self, _cmd, avid, cid, existed, block);
}





















static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBPhoneDownloadVC = objc_getClass("BBPhoneDownloadVC"); { MSHookMessageEx(_logos_class$_ungrouped$BBPhoneDownloadVC, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneDownloadVC$tableView$heightForRowAtIndexPath$);}Class _logos_class$_ungrouped$BBPhoneBaseListVM = objc_getClass("BBPhoneBaseListVM"); { MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(tryLoadMoreData), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$tryLoadMoreData);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(loadMoreData), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$loadMoreData, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$loadMoreData);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(addObjectsFromArray:removeDuplicate:), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$removeDuplicate$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(addObject:), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$addObject$, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$addObject$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(addObjectsFromArray:), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$addObjectsFromArray$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(insertObject:atIndex:), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$insertObject$atIndex$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(hasObjects), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$hasObjects, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$hasObjects);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneBaseListVM, @selector(isNoData), (IMP)&_logos_method$_ungrouped$BBPhoneBaseListVM$isNoData, (IMP*)&_logos_orig$_ungrouped$BBPhoneBaseListVM$isNoData);}Class _logos_class$_ungrouped$BBVDDetailVC = objc_getClass("BBVDDetailVC"); { MSHookMessageEx(_logos_class$_ungrouped$BBVDDetailVC, @selector(setParams:), (IMP)&_logos_method$_ungrouped$BBVDDetailVC$setParams$, (IMP*)&_logos_orig$_ungrouped$BBVDDetailVC$setParams$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBVDDetailVC, @selector(setPvExtras:), (IMP)&_logos_method$_ungrouped$BBVDDetailVC$setPvExtras$, (IMP*)&_logos_orig$_ungrouped$BBVDDetailVC$setPvExtras$);}Class _logos_class$_ungrouped$IJKFFMoviePlayerControllerFFPlay = objc_getClass("IJKFFMoviePlayerControllerFFPlay"); { MSHookMessageEx(_logos_class$_ungrouped$IJKFFMoviePlayerControllerFFPlay, @selector(initWithContentURL:withOptions:), (IMP)&_logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$, (IMP*)&_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURL$withOptions$);}{ MSHookMessageEx(_logos_class$_ungrouped$IJKFFMoviePlayerControllerFFPlay, @selector(initWithContentURLString:withOptions:), (IMP)&_logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$, (IMP*)&_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$initWithContentURLString$withOptions$);}{ MSHookMessageEx(_logos_class$_ungrouped$IJKFFMoviePlayerControllerFFPlay, @selector(init), (IMP)&_logos_method$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init, (IMP*)&_logos_orig$_ungrouped$IJKFFMoviePlayerControllerFFPlay$init);}Class _logos_class$_ungrouped$BBPlayerViewController = objc_getClass("BBPlayerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$BBPlayerViewController, @selector(initWithMode:options:needLoadContext:), (IMP)&_logos_method$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$, (IMP*)&_logos_orig$_ungrouped$BBPlayerViewController$initWithMode$options$needLoadContext$);}Class _logos_class$_ungrouped$IJKDashStreamItem = objc_getClass("IJKDashStreamItem"); { MSHookMessageEx(_logos_class$_ungrouped$IJKDashStreamItem, @selector(baseUrl), (IMP)&_logos_method$_ungrouped$IJKDashStreamItem$baseUrl, (IMP*)&_logos_orig$_ungrouped$IJKDashStreamItem$baseUrl);}{ MSHookMessageEx(_logos_class$_ungrouped$IJKDashStreamItem, @selector(backupUrl0), (IMP)&_logos_method$_ungrouped$IJKDashStreamItem$backupUrl0, (IMP*)&_logos_orig$_ungrouped$IJKDashStreamItem$backupUrl0);}{ MSHookMessageEx(_logos_class$_ungrouped$IJKDashStreamItem, @selector(backupUrl1), (IMP)&_logos_method$_ungrouped$IJKDashStreamItem$backupUrl1, (IMP*)&_logos_orig$_ungrouped$IJKDashStreamItem$backupUrl1);}{ MSHookMessageEx(_logos_class$_ungrouped$IJKDashStreamItem, @selector(initWithStreamId:bandwidth:baseUrl:fileSize:), (IMP)&_logos_method$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$, (IMP*)&_logos_orig$_ungrouped$IJKDashStreamItem$initWithStreamId$bandwidth$baseUrl$fileSize$);}Class _logos_class$_ungrouped$IJKMediaPlayerItem = objc_getClass("IJKMediaPlayerItem"); { MSHookMessageEx(_logos_class$_ungrouped$IJKMediaPlayerItem, @selector(parseAsset:retryCounter:usePrefix:), (IMP)&_logos_method$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$, (IMP*)&_logos_orig$_ungrouped$IJKMediaPlayerItem$parseAsset$retryCounter$usePrefix$);}Class _logos_class$_ungrouped$BFCDownloadManager = objc_getClass("BFCDownloadManager"); Class _logos_metaclass$_ungrouped$BFCDownloadManager = object_getClass(_logos_class$_ungrouped$BFCDownloadManager); { MSHookMessageEx(_logos_metaclass$_ungrouped$BFCDownloadManager, @selector(downloadFolder), (IMP)&_logos_meta_method$_ungrouped$BFCDownloadManager$downloadFolder, (IMP*)&_logos_meta_orig$_ungrouped$BFCDownloadManager$downloadFolder);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadManager, @selector(bindParserResolver:), (IMP)&_logos_method$_ungrouped$BFCDownloadManager$bindParserResolver$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadManager$bindParserResolver$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadManager, @selector(bindNetworkResolver:), (IMP)&_logos_method$_ungrouped$BFCDownloadManager$bindNetworkResolver$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadManager$bindNetworkResolver$);}Class _logos_class$_ungrouped$BBPhoneVideoParserResolve = objc_getClass("BBPhoneVideoParserResolve"); { MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(saveCache:item:videoInfo:audioInfo:audioTyoe:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$saveCache$item$videoInfo$audioInfo$audioTyoe$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(updateEntity:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEntity$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(updateAVEntity:item:videoInfo:audioInfo:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateAVEntity$item$videoInfo$audioInfo$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(updateEpEntity:item:videoInfo:audioInfo:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$updateEpEntity$item$videoInfo$audioInfo$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(getEntitySectionUrlWithCount:entityKey:extra:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlWithCount$entityKey$extra$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(getEntitySectionUrlsWithCount:entityKey:extra:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getEntitySectionUrlsWithCount$entityKey$extra$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneVideoParserResolve, @selector(getFreeUnicomUrl:entityKey:from:error:), (IMP)&_logos_method$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$, (IMP*)&_logos_orig$_ungrouped$BBPhoneVideoParserResolve$getFreeUnicomUrl$entityKey$from$error$);}Class _logos_class$_ungrouped$BFCDownloadTaskCFNetworkOperation = objc_getClass("BFCDownloadTaskCFNetworkOperation"); { MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadTaskCFNetworkOperation, @selector(initWithTask:), (IMP)&_logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$initWithTask$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadTaskCFNetworkOperation, @selector(startWithTargetUrls:option:progress:compleHandle:), (IMP)&_logos_method$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadTaskCFNetworkOperation$startWithTargetUrls$option$progress$compleHandle$);}Class _logos_class$_ungrouped$BFCDownloadAVEntity = objc_getClass("BFCDownloadAVEntity"); { MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadAVEntity, @selector(downloadCoverWithDownloadStartBlock:withDownloadEndBlock:), (IMP)&_logos_method$_ungrouped$BFCDownloadAVEntity$downloadCoverWithDownloadStartBlock$withDownloadEndBlock$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadCoverWithDownloadStartBlock$withDownloadEndBlock$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadAVEntity, @selector(downloadCRONPackageWithDownloadStartBlock:downloadEndBlock:), (IMP)&_logos_method$_ungrouped$BFCDownloadAVEntity$downloadCRONPackageWithDownloadStartBlock$downloadEndBlock$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadCRONPackageWithDownloadStartBlock$downloadEndBlock$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadAVEntity, @selector(downloadDanmakuWithUpdateTag:startBlock:stateBlock:), (IMP)&_logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithUpdateTag$startBlock$stateBlock$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithUpdateTag$startBlock$stateBlock$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadAVEntity, @selector(downloadDanmakuWithDownloadStartBlock:), (IMP)&_logos_method$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadAVEntity$downloadDanmakuWithDownloadStartBlock$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadAVEntity, @selector(getCRONPackagePath), (IMP)&_logos_method$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath, (IMP*)&_logos_orig$_ungrouped$BFCDownloadAVEntity$getCRONPackagePath);}Class _logos_class$_ungrouped$BFCDownloadBaseEntity = objc_getClass("BFCDownloadBaseEntity"); { MSHookMessageEx(_logos_class$_ungrouped$BFCDownloadBaseEntity, @selector(fetchCRONPackageDataWithAvid:cid:cronPackageExisted:endBlock:), (IMP)&_logos_method$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$, (IMP*)&_logos_orig$_ungrouped$BFCDownloadBaseEntity$fetchCRONPackageDataWithAvid$cid$cronPackageExisted$endBlock$);}} }
#line 264 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Mine/NJDownload.xm"
