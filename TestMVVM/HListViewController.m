//
//  HListViewController.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HListViewController.h"
#import "HTableViewDatasource.h"
#import "HTableViewDelegate.h"
#import "HListViewModel.h"
#import <MJRefresh/MJRefresh.h>
#import "HDetailViewController.h"

@interface HListViewController ()
{
    NSMutableArray * arrLists;
}
@property (weak, nonatomic) IBOutlet UITableView *tblList;
@property (strong, nonatomic) IBOutlet HTableViewDatasource *listDatasource;
@property (strong, nonatomic) IBOutlet HTableViewDelegate *listDelegate;

@end

@implementation HListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setAutomaticallyAdjustsScrollViewInsets:false];
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    
    self.tblList.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshAction)];
    self.tblList.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreAction)];
    [self.tblList.mj_header beginRefreshing];
}

- (void)refreshAction{
    [HListViewModel refreshRequestWithCallBack:^(NSArray<HListModel *> *lists) {
        if (lists) {
            arrLists = nil;
            arrLists = [lists mutableCopy];
            _listDatasource.lists = arrLists;
            _listDelegate.lists = arrLists;
            [_tblList.mj_header endRefreshing];
            [_tblList reloadData];
        }
    }];
}

- (void)loadMoreAction{
    [HListViewModel loadMoreRequestWithCallBack:^(NSArray<HListModel *> *lists) {
        if (lists) {
            [arrLists addObjectsFromArray:lists];
            _listDatasource.lists = arrLists;
            _listDelegate.lists = arrLists;
            [_tblList.mj_footer endRefreshing];
            [_tblList reloadData];
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        NSIndexPath * indexPath = [_tblList indexPathForCell:sender];
        HDetailViewController * detailVC = (HDetailViewController *)[segue destinationViewController];
        detailVC.model = arrLists[indexPath.row];
        
    }
}


@end
