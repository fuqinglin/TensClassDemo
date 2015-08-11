//
//  ViewController.m
//  MotailView(模态视图)
//
//  Created by qinglinfu on 15/8/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)motailViewAction:(UIButton *)sender {
    
    TwoViewController *towVct = [[TwoViewController alloc] init];
    
    // 模态视图转场样式：modalTransitionStyle
    /*
     UIModalTransitionStyleCoverVertical = 0,
     UIModalTransitionStyleFlipHorizontal,
     UIModalTransitionStyleCrossDissolve,
     UIModalTransitionStylePartialCurl
     
     */
    towVct.modalTransitionStyle = UIModalTransitionStylePartialCurl;

    
    // 弹出模态视图
    [self presentViewController:towVct animated:YES completion:^{
        
        // 模态视图弹出后做的事
        NSLog(@"===============");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
