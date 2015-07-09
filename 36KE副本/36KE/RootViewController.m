//
//  RootViewController.m
//  36KE
//
//  Created by lanou3g on 15/7/7.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "RootViewController.h"
#import "NewsTableViewController.h"
#import "FinancingTableViewController.h"
#import "MineTableViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏和标题
    NewsTableViewController *newsTVC = [[NewsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *newsVC = [[UINavigationController alloc] initWithRootViewController:newsTVC];
    newsVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"新闻" image:[UIImage imageNamed:@"xw"]selectedImage:nil];
    newsTVC.navigationItem.title = @"新闻";
    

    FinancingTableViewController *finacingTVC = [[FinancingTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *finacingVC = [[UINavigationController alloc] initWithRootViewController:finacingTVC];
    finacingVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"融资" image:[UIImage imageNamed:@"rz"] selectedImage:nil];
    finacingTVC.navigationItem.title = @"融资中的公司";
    
    MineTableViewController *mineTVC = [[MineTableViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *mineVC = [[UINavigationController alloc] initWithRootViewController:mineTVC];
    mineVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"w"] selectedImage:nil];
    mineTVC.navigationItem.title = @"我的";
    
    UIColor *color = [UIColor colorWithRed:0.000 green:0.387 blue:1.000 alpha:1.000];
    [UINavigationBar appearance].barTintColor = color;
    [UINavigationBar appearance].barStyle = UIBarStyleBlack;
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    self.viewControllers = @[newsVC, finacingVC, mineVC];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
