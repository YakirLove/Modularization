//
//  CTMediator+A.m
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *)aViewController
{
    UIViewController *controller = [self performTarget:@"A" action:@"aViewController" params:nil shouldCacheTarget:NO];
    return controller;
}
@end
