//
//  EGUserViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGUserViewController.h"

#import "EGSettingTableViewCell.h"
#import "EGUserDetailViewController.h"

@interface EGUserViewController () < UIScrollViewDelegate, UITableViewDataSource, UITabBarDelegate >

@end

@implementation EGUserViewController
NSString *ID = @"settings";

+ (instancetype)userViewController {
//直接通过storyboard加载,
    UIStoryboard *userStoryboard = [UIStoryboard storyboardWithName:NSStringFromClass([EGUserViewController class]) bundle:nil];
    EGUserViewController *userViewController = [userStoryboard instantiateInitialViewController];
    
    return userViewController;
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
- (void)setup {}

# pragma mark - UITableViewDataSource, UITabBarDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }else if (section == 1) {
        return 2;
    }else
        return 5;
}

- (EGSettingTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EGSettingTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([EGSettingTableViewCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @" ";
    }else
        return nil;
}

#pragma mark - user icon
- (IBAction)iconClick {
    EGUserDetailViewController *detailViewController = [[EGUserDetailViewController alloc]init];
    [self.navigationController pushViewController:detailViewController animated:YES];
}



@end
 
