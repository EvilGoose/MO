//
//  EGRootViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/18/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGRootViewController.h"

#import "EGNewsNavigationViewController.h"
#import "EGReadingNavigationViewController.h"
#import "EGDiscussNavigationViewController.h"
#import "EGVideoNavigationViewController.h"
#import "EGUserSettingNavigationController.h"

@implementation EGRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildViewControllers];
}

// setup ChildViewControllers

- (void)setUpChildViewControllers {
    EGNewsNavigationViewController *newsViewController =
    [EGNewsNavigationViewController newsViewController];
    
    EGReadingNavigationViewController *readingViewController =
    [EGReadingNavigationViewController readingViewController];
    
    EGDiscussNavigationViewController *discussViewController =
    [EGDiscussNavigationViewController discussViewController];
    
     EGVideoNavigationViewController *videoViewController =
    [EGVideoNavigationViewController videoViewController];

    EGUserSettingNavigationController *userViewController =
    [EGUserSettingNavigationController userViewController];
    
    self.viewControllers = @[newsViewController,
                             readingViewController,
                             discussViewController,
                             videoViewController,
                             userViewController];
}

@end
