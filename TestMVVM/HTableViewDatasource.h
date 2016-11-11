//
//  HTableViewDatasource.h
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class HListModel;

@interface HTableViewDatasource : NSObject<UITableViewDataSource>

@property (nonatomic,strong) NSArray <HListModel *> * lists;

@end
