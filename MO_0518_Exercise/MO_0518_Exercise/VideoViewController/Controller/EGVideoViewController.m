//
//  EGVideoViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGVideoViewController.h"

#import "EGVideoPlayController.h"

#import "EGVideoCell.h"

@interface EGVideoViewController () < UITableViewDataSource, UITableViewDelegate >

/**tableView*/
@property (weak, nonatomic)UITableView *videoTableView;

@end

@implementation EGVideoViewController

//重写初始化
- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

//初始化设置
- (void)setup {
    [self.navigationItem setTitle:@"视频"];
}

#pragma mark - lazyload

- (UITableView *)videoTableView {
    if (!_videoTableView) {
        UITableView *tableView = [[UITableView alloc]init];
        [self.view addSubview:tableView];
        _videoTableView = tableView;
        _videoTableView.dataSource = self;
        _videoTableView.delegate = self;
    }
    return _videoTableView;
}

#pragma mark - tableview datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EGVideoCell *cell = [tableView dequeueReusableCellWithIdentifier:[EGVideoCell cellIdentifier]];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([EGVideoCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)viewWillLayoutSubviews {
    [self.videoTableView setBounds:[UIScreen mainScreen].bounds];
    [self.videoTableView setCenter:self.view.center];
}


#pragma mark - tableview delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 240;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld",indexPath.row);
    [self showPlayController:@"URL"];
}

//视频播放界面
- (void)showPlayController:(NSString *)urlStr {
    EGVideoPlayController *playController = [[EGVideoPlayController alloc]init];
    [self.navigationController pushViewController:playController animated:YES];
    self.tabBarController.tabBar.hidden = YES;
}

#pragma mark - life circle 

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}

@end