//
//  Car.m
//  02、课堂练习一
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void)start
{
    NSLog(@"汽车启动了！");
}

- (void)speedUp
{
    NSLog(@"加速到了200迈");
}

+ (void)brake
{
    NSLog(@"刹车减速！");
}

@end
