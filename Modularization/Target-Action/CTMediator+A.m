//
//  CTMediator+A.m
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "CTMediator+A.h"
#import "AViewController.h"

@implementation CTMediator (A)

- (UIViewController *)Action_viewController:(NSDictionary *)params;
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}
@end
