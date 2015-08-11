//
//  main.m
//  NSTimer(定时器)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TimerClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TimerClass *timerClass = [[TimerClass alloc] init];
        
        // 让当前runloop始终运行，可以理解为程序不会执行完后就死掉。
        [[NSRunLoop currentRunLoop] run];

    }
    return 0;
}
