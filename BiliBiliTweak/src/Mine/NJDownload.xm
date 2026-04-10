// 离线缓存

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%hook BBPhoneDownloadVC

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path {
    return %orig;
}

%end

%hook BBPhoneBaseListVM

- (void)tryLoadMoreData {
    %orig;
}
- (void)loadMoreData {
    %orig;
}

- (void)addObjectsFromArray:(id)array removeDuplicate:(_Bool)duplicate {
    %orig;
}

- (void)addObject:(id)object {
    %orig;
}

- (void)addObjectsFromArray:(id)array {
    %orig;
}

- (void)insertObject:(id)object atIndex:(unsigned long long)index {
    %orig;
}

- (_Bool)hasObjects {
    return %orig;
}
- (_Bool)isNoData {
    return %orig;
}


%end

%hook BBVDDetailVC

- (void)setParams:(NSDictionary *)params {
    %orig;
}

- (void)setPvExtras:(NSDictionary *)pvExtras {
    %orig;
}

%end

%hook IJKFFMoviePlayerControllerFFPlay

- (id)initWithContentURL:(id)url withOptions:(id)options {
    return %orig;
}

- (id)initWithContentURLString:(id)urlstring withOptions:(id)options {
    return %orig;
}

- (id)init {
    return %orig;
}

%end

%hook BBPlayerViewController

- (id)initWithMode:(unsigned long long)mode options:(id)options needLoadContext:(_Bool)context {
    return %orig;
}
%end

%hook IJKDashStreamItem

- (NSString *)baseUrl {
    id ret = %orig;
    return ret;
}

- (NSString *)backupUrl0 {
    id ret = %orig;
    return ret;
}

- (NSString *)backupUrl1 {
    id ret = %orig;
    return ret;
}

- (id)initWithStreamId:(int)streamId bandwidth:(int)bandwidth baseUrl:(id)url fileSize:(long long)size {
    return %orig;
}

%end

%hook IJKMediaPlayerItem

- (id)parseAsset:(id)asset retryCounter:(int)counter usePrefix:(_Bool)prefix {
    id ret = %orig;
    return ret;
}

%end

%hook BFCDownloadManager

+ (id)downloadFolder {
    id ret = %orig;
    return ret;
}

- (void)bindParserResolver:(id)resolver {
    %log(nj_logPrefix);
    %orig;
}

- (void)bindNetworkResolver:(id)resolver {
    %log(nj_logPrefix);
    %orig;
}

%end

%hook BBPhoneVideoParserResolve

- (void)saveCache:(id)cache item:(id)item videoInfo:(id)info audioInfo:(id)audioInfo audioTyoe:(long long)tyoe {
    %log(nj_logPrefix);
    %orig;
}

- (_Bool)updateEntity:(id)entity error:(id *)error {
    %log(nj_logPrefix);
    return %orig;
}
- (_Bool)updateAVEntity:(id)aventity item:(id)item videoInfo:(id)info audioInfo:(id)audioInfo error:(id *)error  {
    %log(nj_logPrefix);
    return %orig;
}
- (_Bool)updateEpEntity:(id)entity item:(id)item videoInfo:(id)info audioInfo:(id)audioInfo error:(id *)error {
    %log(nj_logPrefix);
    return %orig;
}
- (id)getEntitySectionUrlWithCount:(long long)count entityKey:(id)key extra:(id)extra error:(id *)error {
    %log(nj_logPrefix);
    return %orig;
}
- (id)getEntitySectionUrlsWithCount:(long long)count entityKey:(id)key extra:(id)extra error:(id *)error {
    %log(nj_logPrefix);
    return %orig;
}
- (id)getFreeUnicomUrl:(id)url entityKey:(id)key from:(id)from error:(id *)error {
    %log(nj_logPrefix);
    return %orig;
}

%end
 
%hook BBResolverMediaPlayerItem

//- (void)setMode:(long long)mode {
//    %log(nj_logPrefix);
//    return %orig;
//}

%end

%hook BFCDownloadTaskCFNetworkOperation

- (id)initWithTask:(id)task {
    %log(nj_logPrefix);
    return %orig;
}

- (void)startWithTargetUrls:(id)urls option:(id)option progress:(id)progress compleHandle:(id)handle {
    %log(nj_logPrefix);
    %orig;
}


%end

%hook BFCDownloadTask

//- (void)setCommand:(unsigned long long)command {
//    %log(nj_logPrefix);
//    %orig;
//}
//
//- (void)setEntityType:(NSString *)entityType {
//    %log(nj_logPrefix);
//    %orig;
//}


%end


%hook BFCDownloadAVEntity

- (void)downloadCoverWithDownloadStartBlock:(id)block withDownloadEndBlock:(id)withDownloadEndBlock {
    %log(nj_logPrefix);
//    %orig;
}
- (void)downloadCRONPackageWithDownloadStartBlock:(id)block downloadEndBlock:(id)downloadEndBlock {
    %log(nj_logPrefix);
//    %orig;
}

- (void)downloadDanmakuWithUpdateTag:(_Bool)tag startBlock:(id)block stateBlock:(id)stateBlock {
    %log(nj_logPrefix);
//    %orig;
}
- (void)downloadDanmakuWithDownloadStartBlock:(id)block {
    %log(nj_logPrefix);
    %orig;
}

- (id)getCRONPackagePath {
    id ret = %orig;
    NSLog(@"%@:%@-%p-%s-getCRONPackagePath:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
}

%end

%hook BFCDownloadBaseEntity

- (void)fetchCRONPackageDataWithAvid:(long long)avid cid:(long long)cid cronPackageExisted:(id)existed endBlock:(id)block {
    %log(nj_logPrefix);
    %orig;
}

%end

//%hook NSData
//
//+ (id)dataWithContentsOfURL:(NSURL *)url {
//    %log(nj_logPrefix);
//    return %orig;
//}
//
//%end
//
//%hook NSURL
//
//+ (id)URLWithString:(NSString *)URLString {
//    %log(nj_logPrefix);
//    return %orig;
//}
//
//%end

