//
//  HDetailViewController.h
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HListModel;

@interface HDetailViewController : UIViewController

@property (nonatomic,strong) HListModel * model;

@end
