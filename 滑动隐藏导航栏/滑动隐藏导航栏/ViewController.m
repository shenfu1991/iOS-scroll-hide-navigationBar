//
//  ViewController.m
//  滑动隐藏导航栏
//
//  Created by meng on 16/6/6.
//  Copyright © 2016年 meng. All rights reserved.
//

#import "UIViewController+ScrollHide.h"
#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic, assign) double recordDistance; //记录滑动的距离

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"tableview";

    [self.tableView reloadData];
}

- (UITableView*)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:0];
        [self.view addSubview:_tableView];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }

    return _tableView;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{

    return 30;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    }

    cell.textLabel.text = @"你是sb吗？";

    return cell;
}

@end
