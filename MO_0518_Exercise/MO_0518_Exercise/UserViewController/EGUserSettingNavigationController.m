//
//  EGUserSettingNavigationController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGUserSettingNavigationController.h"

@interface EGUserSettingNavigationController ()

@end

@implementation EGUserSettingNavigationController

- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    [self setup];
}

- (void)setup {
    self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"用户" image:nil selectedImage:nil];
}

+ (instancetype)userViewController {
    //直接通过storyboard加载,
    UIStoryboard *userStoryboard = [UIStoryboard storyboardWithName:NSStringFromClass([EGUserSettingNavigationController class]) bundle:nil];
    EGUserSettingNavigationController *userViewController = [userStoryboard instantiateInitialViewController];
    
    return userViewController;
}

@end
