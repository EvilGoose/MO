//
//  EGReadingNavigationViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGReadingNavigationViewController.h"

#import "EGReadingViewController.h"

@interface EGReadingNavigationViewController ()

@end

@implementation EGReadingNavigationViewController

+ (instancetype)readingViewController {
    EGReadingViewController *readingViewController = [[EGReadingViewController alloc]init];
    EGReadingNavigationViewController *readingNavigationViewController =
    [[EGReadingNavigationViewController alloc]initWithRootViewController:readingViewController];
    
    readingNavigationViewController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"阅读" image:nil selectedImage:nil];
    
    return readingNavigationViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
