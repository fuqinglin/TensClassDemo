//
//  ViewController.m
//  03UIView_Demo
//
//  Created by Kinglin_Fu on 15/8/1.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1、Frame：视图的坐标位置和尺寸,坐标位置以父视图作为参照
    // CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height);
    /*
     struct CGRect {
        CGPoint origin;
        CGSize size;
     };
     */
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 300, 200)];
    view.backgroundColor = [UIColor greenColor];
    
    // 将view添加到父视图上显示
    [self.view addSubview:view];
    
    //2、bounds  view自身的坐标系统，坐标点都是0,0。通常使用bounds获取view的尺寸
    UIView *view_2 = [[UIView alloc] initWithFrame:view.bounds];
    view_2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:view_2];
    
    NSLog(@"frame:%@",NSStringFromCGRect(view.frame));
    NSLog(@"bounds:%@",NSStringFromCGRect(view.bounds));
    
    
    UIView *view_3 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    view_3.backgroundColor = [UIColor blackColor];
    [view addSubview:view_3];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
