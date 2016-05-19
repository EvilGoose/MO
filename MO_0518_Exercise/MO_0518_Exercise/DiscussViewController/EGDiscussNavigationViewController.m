//
//  EGDiscussNavigationViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGDiscussNavigationViewController.h"

#import "EGDiscussViewController.h"

@interface EGDiscussNavigationViewController ()

@end

@implementation EGDiscussNavigationViewController

//初始化方法
+ (instancetype)discussViewController {
    EGDiscussViewController *discussViewController = [[EGDiscussViewController alloc]init];
    EGDiscussNavigationViewController *discussNavigationViewController = [[EGDiscussNavigationViewController alloc]initWithRootViewController:discussViewController];
    discussNavigationViewController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"讨论" image:nil tag:nil];
    return discussNavigationViewController;
}

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}





@end
