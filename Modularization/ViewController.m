//
//  ViewController.m
//  Modularization
//
//  Created by wyj on 2018/7/25.
//  Copyright © 2018年 wyj. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator.h"
#import "CTMediator+A.h"
#import "URLRouter.h"
#import "ModuleManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"url-block" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.tag = 1;
    [button addTarget:self action:@selector(addVC:) forControlEvents:UIControlEventTouchUpInside];
    
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(100, 250, 200, 100)];
    [button setTitle:@"protocol-class" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.tag = 2;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(addVC:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 100)];
    [button setTitle:@"target-action" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.tag = 3;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(addVC:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)addVC:(UIButton *)button
{
    if(button.tag == 1)
    {
        UIViewController *vc = [URLRouter objectForURL:@"router://A"];
        [self presentViewController:vc animated:YES completion:^{
            
        }];
        
    }
    else if(button.tag == 2)
    {
        Class aclass = [ModuleManager classForProtocol:NSProtocolFromString(@"AProtocol")];
        UIViewController *vc = [[aclass alloc] init];
        if([vc conformsToProtocol:NSProtocolFromString(@"AProtocol")])
        {
            NSLog(@"%@",[vc performSelector:@selector(vcTitle) withObject:nil]);
        }
        
        [self presentViewController:vc animated:YES completion:^{
        }];
    }
    else if(button.tag == 3)
    {
        UIViewController *vc = [[CTMediator sharedInstance] Action_viewController:nil];
        [self presentViewController:vc animated:YES completion:^{
            
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
