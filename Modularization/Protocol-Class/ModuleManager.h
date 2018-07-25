//
//  ModuleManager.h
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AProtocol.h"

@interface ModuleManager : NSObject

@property (nonatomic, strong) NSMutableDictionary *dic;
/// 构造函数
+ (ModuleManager *)sharedInstance;


+(void)registerClass:(Class)aclass forProtocol:(Protocol*)aprotocol;

+(Class)classForProtocol:(Protocol*)aprotocol;

@end
