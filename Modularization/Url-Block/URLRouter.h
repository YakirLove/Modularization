//
//  URLRouter.h
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface URLRouter : NSObject

@property (nonatomic, strong) NSMutableArray *array;
/// 构造函数
+ (URLRouter *)sharedInstance;

+(id)objectForURL:(NSString *)url;

+(void)registerURLPattern:(NSString *)url toHandler:(void (^)(NSDictionary *))router;

@end
