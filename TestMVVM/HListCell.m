//
//  HCellTableViewCell.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HListCell.h"
#import "HListModel.h"

@implementation HListCell

- (void)reloadData:(HListModel *)model{
    if (model) {
        self.tipColorView.backgroundColor = model.tipColor;
        self.lbDateInfo.text = model.date;
    }else{
        self.tipColorView.backgroundColor = [UIColor clearColor];
        self.lbDateInfo.text = @"";
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
