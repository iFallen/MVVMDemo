//
//  HTableViewDelegate.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HTableViewDelegate.h"
#import "HListModel.h"

@implementation HTableViewDelegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HListModel * model = [_lists objectAtIndex:indexPath.row];
    NSLog(@"Select At Row:%ld,%@",indexPath.row,model.date);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}



@end
