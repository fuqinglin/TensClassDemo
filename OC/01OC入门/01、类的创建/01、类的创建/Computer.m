//
//  Computer.m
//  01、类的创建
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Computer.h"

@implementation Computer

- (void)computerMethod
{
    NSLog(@"计算功能！");
}

- (NSString *)showInfo
{
    NSString *info = @"qwertyuiopasdfghjkl";
    
    return info;
}

- (int)method
{
    int value = 1000;
    return value;
}

- (NSString *)runSoft:(NSString *)softName
{
    NSLog(@"正在运行%@软件",softName);
    return softName;
}

- (void)setBrand:(NSString *)brand withCPUType:(NSString *)cpu
{
    NSLog(@"品牌：%@，CPU型号：%@",brand,cpu);
}

// 类方法
+ (void)method_classs
{
    NSLog(@"这里是类方法");
}

@end
