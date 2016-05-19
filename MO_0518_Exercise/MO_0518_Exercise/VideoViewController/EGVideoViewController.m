//
//  EGVideoViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGVideoViewController.h"

@implementation EGVideoViewController

+ (instancetype)videoViewController {
    EGVideoViewController *videoViewController = [[EGVideoViewController alloc]init];
    return videoViewController;
}

//重写初始化
- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

//初始化处理
- (void)setup {
    self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Video" image:nil selectedImage:nil];
}

@end
