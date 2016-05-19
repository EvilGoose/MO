//
//  EGRootViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/18/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGRootViewController.h"

#import "EGVideoViewController.h"
#import "EGUserSettingNavigationController.h"


@implementation EGRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildViewControllers];
}

// setup ChildViewControllers

- (void)setUpChildViewControllers {
    EGVideoViewController *videoViewController = [EGVideoViewController videoViewController];
    EGUserSettingNavigationController *userViewController = [EGUserSettingNavigationController userViewController];
    
    self.viewControllers = @[videoViewController, userViewController];
}

@end
