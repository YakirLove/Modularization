//
//  URLRouter.m
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "URLRouter.h"
#import "AViewController.h"

@implementation URLRouter

+ (URLRouter *)sharedInstance
{
    static dispatch_once_t pred;
    static URLRouter *sharedInstance = nil;
    dispatch_once(&pred, ^{
        sharedInstance = [[URLRouter alloc] init];
        sharedInstance.array = [[NSMutableArray alloc] init];
    });
    return sharedInstance;
}


+(id)objectForURL:(NSString *)url
{
    //  这里只是表示从维护的表取数据，真实情况可能更复杂
    NSArray *array = [URLRouter sharedInstance].array;
    for (NSInteger i = 0; i < array.count; i++) {
        if([array[i] isEqualToString:@"router://A"])
        {
            return [AViewController new];
        }
    }
    return nil;
}

+(void)registerURLPattern:(NSString *)url toHandler:(void (^)(NSDictionary *))router
{
//  这里只是表示需要维护一个表，真实情况可能更复杂
    [[URLRouter sharedInstance].array addObject:url];
}

@end
