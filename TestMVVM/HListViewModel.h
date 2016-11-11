//
//  HListViewModel.h
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HListModel;

typedef void(^HCallBack)(NSArray<HListModel *> * lists);

@interface HListViewModel : NSObject


+ (void)refreshRequestWithCallBack:(HCallBack)callBack;

+ (void)loadMoreRequestWithCallBack:(HCallBack)callBack;


@end
