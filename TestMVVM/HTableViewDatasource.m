//
//  HTableViewDatasource.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HTableViewDatasource.h"
#import "HListModel.h"
#import "HListCell.h"

@implementation HTableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    if (_lists) {
        return _lists.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HListCell * cell = (HListCell *)[tableView dequeueReusableCellWithIdentifier:@"HCell" forIndexPath:indexPath];
    HListModel * model = [_lists objectAtIndex:indexPath.row];
    cell.tipColorView.backgroundColor = model.tipColor;
    cell.lbDateInfo.text = model.date;
    return cell;
}


@end
