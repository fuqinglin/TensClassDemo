//
//  ViewController.m
//  04UIView常用属性和方法
//
//  Created by Kinglin_Fu on 15/8/1.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //------------------------------UIView常用属性----------------------------
    // 1、backgroundColor 设置背景颜色
    self.view1.backgroundColor = [UIColor blueColor];
    // 使用三色值RGB
    self.view1.backgroundColor = [UIColor colorWithRed:0.5 green:0.2 blue:0.1 alpha:1];
    
    // 黑白间的透明效果
    self.view1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    
    // 使用图片作为颜色填充
    self.view1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"car1.jpg"]];
    
    
    // 2、alpha:透明度 0~1
    self.view1.alpha = 0.5;
    
    // 3、hidden 视图的隐藏属性
    self.view1.hidden = NO;
    
    // 4、tag:设置标签值，可以通过标签获取对应的视图
    self.view1.tag = 100;
    self.view2.tag = 200;
    self.view3.tag = 300;
    
    // 从父视图通过tag值取到对应的view
    UIView *view_ = [self.view viewWithTag:100];
    
    // 5、superView:获取所在的父视图
    UIView *superView = self.view1.superview;
    NSLog(@"%@",superView);
    
    //6、subViews:获取视图的所有子视图
    NSArray *subViews = self.view.subviews;
    NSLog(@"subViews:%@",subViews);
    
    //7、center: 获取视图的中心点坐标
    CGPoint center = self.view1.center;
    self.view1.center = self.view2.center;
    NSLog(@"%@",NSStringFromCGPoint(center));
    NSLog(@"%@",NSStringFromCGPoint(self.view2.center));
    
    
    //--------------------------------UIView常用方法-------------------------
    // 1、addSubview：添加一个子视图
    [self.view addSubview:self.view1];
    
    // 2、removeFromSuperview：将视图从父视图中移除
    [self.view1 removeFromSuperview];
    
    // 3、exchangeSubviewAtIndex：withSubviewAtIndex：
    NSArray *subArray = self.view.subviews;
    NSInteger index2 = [subArray indexOfObject:self.view2];
    NSInteger index3 = [subArray indexOfObject:self.view3];
    NSLog(@"index2:%ld,index3:%ld",index2,index3);
    
    // 交换两个子视图的层次位置
    [self.view exchangeSubviewAtIndex:index3 withSubviewAtIndex:index2];
    
    // 4、bringSubviewToFront:将视图移到父视图的最上层
    [self.view bringSubviewToFront:self.view3];
    
    //5、sendSubviewToBack:将视图移到父视图的最底层
    [self.view sendSubviewToBack:self.view3];
    
    // 6、将一个视图放到另外一个视图的上层
    [self.view insertSubview:self.view2 aboveSubview:self.view3];
    
    // 7、将一个视图放到另外一个视图的下层
    [self.view insertSubview:self.view2 belowSubview:self.view3];
}

@end
