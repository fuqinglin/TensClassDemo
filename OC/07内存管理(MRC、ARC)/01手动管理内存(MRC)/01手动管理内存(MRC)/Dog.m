//
//  Dog.m
//  01手动管理内存(MRC)
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Dog.h"

@implementation Dog

// 当对象的引用计数 为 0时就会调用这个方法。释放对象
- (void)dealloc
{
    NSLog(@"对象释放了！");
    [super dealloc];
}

- (void)test
{
    NSLog(@"测试！");
}


@end
