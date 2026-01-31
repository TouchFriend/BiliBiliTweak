//
//  NJRcmdCardEntry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

#import "NJRcmdCardEntry.h"

@implementation NJRcmdCardEntry

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

/// 做初始化
- (void)doInit {
    
}

- (NSString *)cardType {
    return @"";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    return data;
}

@end
