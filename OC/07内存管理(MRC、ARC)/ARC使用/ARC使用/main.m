//
//  main.m
//  ARC使用
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // __strong 强引用，持有对象。默认,不需要写
        __strong Person *p1 = [[Person alloc] init]; // 1
        [p1 method];
//        NSLog(@"p1:%@",p1);
        
         // 等价于 = Person *p1 = [[Person alloc] init];
        
        // __weak弱引用，不会持有对象。__weak修饰的引用指向的对象会马上销毁
//        __weak Person *p2 = [[Person alloc] init];
//        NSLog(@"p2:%@",p2);
        
        
        //ARC下不能使用 retain、release、autorelease、retainCount这些关键字
//        [p1 retain];
//        [p1 retainCount];
//        [p1 release];
        
        
    }
    return 0;
}
