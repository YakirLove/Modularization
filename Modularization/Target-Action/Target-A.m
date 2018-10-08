//
//  Target-A.m
//  Modularization
//
//  Created by wyj on 2018/10/8.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "Target-A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_aViewController:(NSDictionary *)params;
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
