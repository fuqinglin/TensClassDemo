//
//  TwoViewController.m
//  MotailView(模态视图)
//
//  Created by qinglinfu on 15/8/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "TwoViewController.h"
#import "ViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)backAction:(UIButton *)sender {
    
    // 收起模态视图
    [self dismissViewControllerAnimated:YES completion:^{
        
        // 模态视图收起以后做的事
        NSLog(@"+++++++++++");
    }];
    
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
