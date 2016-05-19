//
//  EGNewsNavigationViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGNewsNavigationViewController.h"

#import "EGNewsViewController.h"

@interface EGNewsNavigationViewController ()

@end

@implementation EGNewsNavigationViewController

+ (instancetype)newsViewController {
    EGNewsViewController *newsViewController = [[EGNewsViewController alloc]init];
    EGNewsNavigationViewController *newNavigationController = [[EGNewsNavigationViewController alloc]initWithRootViewController:newsViewController];
    newNavigationController.tabBarItem  = [[UITabBarItem alloc]initWithTitle:@"新闻" image:nil selectedImage:nil];
    return newNavigationController;
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self = [super initWithRootViewController:rootViewController]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.view.backgroundColor = [UIColor greenColor];
}

@end
