//
//  TestClass.m
//  04延展
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "TestClass.h"

// 延展：用于声明类的私有方法或者对方法归类
@interface TestClass (私有方法)
- (void)method_3;
- (void)method_4;
@end


@interface TestClass (请求网络)
- (void)method_5;
- (void)method_6;
@end


@implementation TestClass

- (void)method_1
{
    NSLog(@"公开方法！");
}

- (void)method_2
{
    NSLog(@"公开方法");
}


- (void)method_3
{
    NSLog(@"私有方法01");
}

- (void)method_4
{
    NSLog(@"私有方法02");
}

#pragma mark - 网络请求
- (void)method_5
{
    NSLog(@"方法05");
}

- (void)method_6
{
    NSLog(@"方法06");
}



@end
