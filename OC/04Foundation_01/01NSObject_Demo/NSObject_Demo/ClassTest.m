//
//  ClassTest.m
//  NSObject_Demo
//
//  Created by Kinglin_Fu on 15/7/24.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ClassTest.h"

@implementation ClassTest

- (void)method_1
{
    NSLog(@"method_1");
}

- (void)method:(NSString *)test
{
    NSLog(@"test:%@",test);
}

- (void)method:(NSString *)test1 with:(NSString *)test2
{
    NSLog(@"test1:%@， test2:%@",test1,test2);
}

@end
