//
//  HTableViewDelegate.h
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class HListModel;

@interface HTableViewDelegate : NSObject<UITableViewDelegate>

@property (nonatomic,strong) NSArray <HListModel *> * lists;

@end
