//
//  Student.m
//  06、权限关键字
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Student.h"

@implementation Student


- (void)method
{
    NSLog(@"name:%@",_name);
    NSLog(@"sex:%@",_sex); // 子类可以访问保护类型的属性
//    NSLog(@"age:%d",_age); 子类不能访问私有的属性
}

@end
