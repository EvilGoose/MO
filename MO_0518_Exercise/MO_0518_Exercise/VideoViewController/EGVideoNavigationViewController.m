//
//  EGVideoNavigationViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGVideoNavigationViewController.h"

#import "EGVideoViewController.h"

@interface EGVideoNavigationViewController ()

@end

@implementation EGVideoNavigationViewController

+ (instancetype)videoViewController {
    EGVideoViewController *videoController = [[EGVideoViewController alloc]init];
    EGVideoNavigationViewController *videoNavigationController = [[EGVideoNavigationViewController alloc]initWithRootViewController:videoController];
    videoNavigationController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"视频" image:nil selectedImage:nil];
    return videoNavigationController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
