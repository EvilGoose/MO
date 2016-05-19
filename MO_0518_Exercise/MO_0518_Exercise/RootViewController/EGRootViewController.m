//
//  EGRootViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/18/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGRootViewController.h"

#import "EGVideoViewController.h"
#import "EGUserViewController.h"


@implementation EGRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildViewControllers];
}



// setup ChildViewControllers

- (void)setUpChildViewControllers {
    EGVideoViewController *videoViewController = [EGVideoViewController videoViewController];
    EGUserViewController *userViewController = [EGUserViewController userViewController];
    
    [self addChildViewController:videoViewController];
    [self addChildViewController:userViewController];
}

@end
