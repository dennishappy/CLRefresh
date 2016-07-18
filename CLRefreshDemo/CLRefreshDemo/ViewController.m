//
//  ViewController.m
//  CLRefreshDemo
//
//  Created by 陈林 on 16/7/18.
//  Copyright © 2016年 陈林. All rights reserved.
//

#import "ViewController.h"
#import "CLRefresh.h"
#import <UIKit/UIKit.h>


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *table;
    RefreshHeaderView *headerView;
    RefreshFooterView *footerView;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    table = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    table.tableFooterView = [UIView new];
    
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    [self.view addSubview:table];
    
    __weak __typeof (self)weakself = self;
    
    headerView = [table addHeaderWithRefreshHandler:^(RefreshBaseView *refreshView) {
        
        [weakself performSelector:@selector(handleRefresh) withObject:nil afterDelay:2.0];
    }];
    
    
    footerView = [table addFooterWithRefreshHandler:^(RefreshBaseView *refreshView) {
        [weakself performSelector:@selector(handleRefresh) withObject:nil afterDelay:2.0];
        
    }];
    
    
}


- (void)handleRefresh
{
    
    [headerView endRefresh];
    [footerView endRefresh];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    if (indexPath.row == 0) {
        [cell setBackgroundColor:[UIColor grayColor]];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld--%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}


@end
