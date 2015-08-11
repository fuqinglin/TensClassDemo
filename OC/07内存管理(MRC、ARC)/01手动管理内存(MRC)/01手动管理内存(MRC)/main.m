//
//  main.m
//  01手动管理内存(MRC)
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dog *dog = [[Dog alloc] init];
        
        // retainCount 获取对象的引用计数
        NSLog(@"引用计数：%ld",[dog retainCount]); // 1
        
        [dog retain]; // retain 引用计数 +1
         NSLog(@"引用计数：%ld",[dog retainCount]); // 2
        [dog retain];
        NSLog(@"引用计数：%ld",[dog retainCount]); // 3
        
        [dog release]; // 引用计数 -1
        NSLog(@"引用计数：%ld",[dog retainCount]); // 2
        
        [dog release];
        NSLog(@"引用计数：%ld",[dog retainCount]); // 1

        [dog release];
        
//        NSLog(@"引用计数：%ld",[dog retainCount]);
//        [dog test]; // 错误的操作：不能使用销毁的对象调用它的方法
        
        NSString * s1 = @"abc";
        NSString * s2 = @"abc";
        NSLog(@"s1地址：%p",s1);
        NSLog(@"s2地址：%p",s2);
    
    }
    return 0;
}
