//
//  EGUserDetailViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGUserDetailViewController.h"

@interface EGUserDetailViewController ()

@end

@implementation EGUserDetailViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

//当前界面出现前修改navigationBar的状态
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setNaviagationBarTranspatent];
}

//当前界面消失前恢复到navigationBar的初始状态
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self setNavigationBarOrigin];
}

#pragma mark - set NavigationBar status

//设置Navigationbar 状态
- (void)setNaviagationBarTranspatent {
    NSLog(@"%s", __func__);
}

- (void)setNavigationBarOrigin  {
    NSLog(@"%s", __func__);
}

@end
