//
//  EGNewsViewController.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGNewsViewController.h"

#import "Masonry.h"

@interface EGNewsViewController () < UITableViewDataSource,UITableViewDelegate >

/**tableView*/
@property (weak, nonatomic)UITableView *newsTableView;

@end

@implementation EGNewsViewController

//重写初始化
- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

//初始化设置
- (void)setup {
    [self.navigationItem setTitle:@"新闻"];
}

#pragma mark - lazyload

- (UITableView *)newsTableView {
    if (!_newsTableView) {
        UITableView *tableView = [[UITableView alloc]init];
        [self.view addSubview:tableView];
        _newsTableView = tableView;
        _newsTableView.dataSource = self;
    }
    return _newsTableView;
}

#pragma mark - datasource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"news"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"news"];
        [cell.textLabel setText: @"news"];
    }
    return cell;
}

- (void)viewWillLayoutSubviews {
    NSLog(@"%s", __func__);
    [self.newsTableView setBounds:[UIScreen mainScreen].bounds];
    [self.newsTableView setCenter:self.view.center];
    [self.newsTableView setRowHeight:100];
}

@end
