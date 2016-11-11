//
//  HCellTableViewCell.h
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HListModel;

@interface HListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *tipColorView;
@property (weak, nonatomic) IBOutlet UILabel *lbDateInfo;

- (void)reloadData:(HListModel *)model;

@end
