//
//  HDetailViewController.m
//  TestMVVM
//
//  Created by JuanFelix on 11/11/2016.
//  Copyright © 2016 JuanFelix. All rights reserved.
//

#import "HDetailViewController.h"
#import "HListModel.h"

@interface HDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lbDateInfo;

@end

@implementation HDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (_model) {
        self.view.backgroundColor = _model.tipColor;
        self.lbDateInfo.text = _model.date;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
