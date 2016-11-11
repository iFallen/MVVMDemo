//
//  HListViewModel.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HListViewModel.h"
#import "HListModel.h"

@implementation HListViewModel

+ (void)refreshRequestWithCallBack:(HCallBack)callBack{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSMutableArray<HListModel *> * arrLists = [NSMutableArray array];
            for (int i = 0; i < 10; i++) {
                CGFloat r = arc4random() % 255 / 255.0;
                CGFloat g = arc4random() % 255 / 255.0;
                CGFloat b = arc4random() % 255 / 255.0;
                HListModel * model = [[HListModel alloc] init];
                model.tipColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
                model.date = [[NSDate date] description];
                [arrLists addObject:model];
            }
            if (callBack) {
                callBack(arrLists);
            }
        });
    });
}

+ (void)loadMoreRequestWithCallBack:(HCallBack)callBack{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSMutableArray<HListModel *> * arrLists = [NSMutableArray array];
            for (int i = 0; i < 10; i++) {
                CGFloat r = arc4random() % 255 / 255.0;
                CGFloat g = arc4random() % 255 / 255.0;
                CGFloat b = arc4random() % 255 / 255.0;
                HListModel * model = [[HListModel alloc] init];
                model.tipColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
                model.date = [[NSDate date] description];
                [arrLists addObject:model];
            }
            if (callBack) {
                callBack(arrLists);
            }
        });
    });
}

@end
