//
//  NewsTableViewController.m
//  36KE
//
//  Created by lanou3g on 15/7/7.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "NewsTableViewController.h"
#import "NewsView.h"
@interface NewsTableViewController () <UIScrollViewDelegate>

@property (nonatomic, retain) NewsView *newsView;
@property (nonatomic, retain) UIScrollView *scrolView;
@property (nonatomic, retain) UIPageControl *pageContorl;
@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    // 添加搜索框
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
    [self addScrolView];

}

#pragma mark - 添加scrolView
- (void)addScrolView
{
    // 添加scroll
    CGRect scrolViewRect = CGRectMake(0, 0, self.view.frame.size.width *3, 150);
    _scrolView = [[UIScrollView alloc] initWithFrame:scrolViewRect];
    self.tableView.tableHeaderView = _scrolView;
    
    // 设置滚动视图代理
    _scrolView.delegate = self;

   
    
    // 添加小点点
    _pageContorl = [[UIPageControl alloc] initWithFrame:CGRectMake (10, 120, self.view.frame.size.width - 20, 20)];
    _pageContorl.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_pageContorl];
   
    // 给小点点绑定事件
    [_pageContorl addTarget:self action:@selector(pageContorlAction) forControlEvents:UIControlEventValueChanged];
    
    // 添加图片到scrollView
    NSInteger count = 9;
    for (int i = 0; i < count; i++) {
        NSString *imageName = [NSString stringWithFormat:@"bg_%d.JPG", i];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(_scrolView.frame.size.width * i, 0, _scrolView.frame.size.width, _scrolView.frame.size.height);
        [_scrolView addSubview:imageView];
        
        _scrolView.contentSize = CGSizeMake(_scrolView.frame.size.width * count, _scrolView.frame.size.height);
        _scrolView.pagingEnabled = YES;
        _scrolView.showsVerticalScrollIndicator = NO;
        _scrolView.showsHorizontalScrollIndicator = NO;
        _pageContorl.numberOfPages = count;
    }

}
#pragma mark scrollView代理事件
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / scrollView.frame.size.width;
    
    _pageContorl.currentPage = index;
}
#pragma mark 小点点事件
- (void)pageContorlAction
{
    CGPoint point = CGPointMake(_pageContorl.currentPage * _scrolView.frame.size.width, 0);
    [_scrolView setContentOffset:point animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 1) {
        return 200;
    } else {
        return 80;
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
