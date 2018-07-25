//
//  ModuleManager.m
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "ModuleManager.h"
#import "AViewController.h"
@implementation ModuleManager

+ (ModuleManager *)sharedInstance
{
    static dispatch_once_t pred;
    static ModuleManager *sharedInstance = nil;
    dispatch_once(&pred, ^{
        sharedInstance = [[ModuleManager alloc] init];
        sharedInstance.dic = [[NSMutableDictionary alloc] init];
    });
    return sharedInstance;
}


+(void)registerClass:(Class)aclass forProtocol:(Protocol*)aprotocol;
{
    //存储映射关系，但真实不一定是这种写法
    [[ModuleManager sharedInstance].dic setValue:NSStringFromClass(aclass) forKey:NSStringFromProtocol(aprotocol)];
}

+(Class)classForProtocol:(Protocol*)aprotocol;
{
    NSDictionary *dic = [ModuleManager sharedInstance].dic;
    NSString *aclass = [dic objectForKey:NSStringFromProtocol(aprotocol)];
    Class class = NSClassFromString(aclass);
    return class;
}
@end
