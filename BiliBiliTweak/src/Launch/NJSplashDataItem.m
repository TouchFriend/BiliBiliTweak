//
//  NJSplashDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/12/24.
//

#import "NJSplashDataItem.h"
#import "NJCommonDefine.h"

@interface NJSplashDataItem ()


@end

@implementation NJSplashDataItem

#pragma mark - Life Cycle Methods

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/splash/list";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if (allDataDic[@"data"]) {
            allDataDic[@"data"] = nil;
        }
    
        NSError *serializationError = nil;
        // 序列化为 JSON Data
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:allDataDic
                                                          options:0
                                                            error:&serializationError];
        if (serializationError) {
            NSLog(@"%@:JSON 序列化失败: %@", nj_logPrefix, serializationError.localizedDescription);
        } else {
            data = jsonData;
        }
    }
    return data;
}



#pragma mark - Public Methods

#pragma mark - Private Methods


#pragma mark - Property Methods







@end
