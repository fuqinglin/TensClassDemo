//
//  TimerClass.m
//  NSTimer(定时器)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "TimerClass.h"

@implementation TimerClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        
      [NSTimer scheduledTimerWithTimeInterval:1      // 调用方法的时间间隔
                                         target:self // 调用方法的对象
                                     selector:@selector(timerAction:) // 调用的方法
                                       userInfo:nil  // 传递的对象类型数据
                                        repeats:YES]; // 是否重复调用
        
    }
    return self;
}

- (void)timerAction:(NSTimer *)timer
{
    static int count = 10;
    NSLog(@"%d",count);
    count--;
    if (count == 0) {
        
        // invalidate 关闭定时器
        [timer invalidate];
    }
}

@end
