//
//  main.m
//  NSObject_Demo
//
//  Created by Kinglin_Fu on 15/7/24.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //-------------------NSObject--------------------
        
//        NSObject *obj = [[NSObject alloc] init];
        
//        NSObject *obj_ = [NSObject new]; // new 创建并且初始化对象
        
        ClassTest *classT = [[ClassTest alloc] init];
        [classT method_1];
        
        // 1、方法调用
        // 调用没有参数的方法，这个方法可以不在.h中声明
        [classT performSelector:@selector(method_1)];
//        [classT performSelector:@selector(method:)]; // 错误
        
        //调用带有一个参数的方法，参数是对象类型
        [classT performSelector:@selector(method:) withObject:@"参数"];
        
        //调用带有两个参数的方法，参数是对象类型
        [classT performSelector:@selector(method:with:) withObject:@"参数1" withObject:@"参数2"];
        
        
        // 2、类的判断
        //isKindOfClass: 用于判断某个对象是否是某个类创建的，或者它的父类
        if ([classT isKindOfClass:[ClassTest class]]) {
            
            NSLog(@"classT是ClassTest类");
        }
        
        if ([classT isKindOfClass:[NSObject class]]) {
            
            NSLog(@"classT是NSObject类");
        }
        
        //isMemberOfClass:用于判断某个对象是否是某个类创建的，不用用于判断父类
        if ([classT isMemberOfClass:[ClassTest class]]) {
            NSLog(@"classT是ClassTest类+++");
        }

        if ([classT isMemberOfClass:[NSObject class]]) {
            
            NSLog(@"___classT是NSObject类");
        }
        
        
        // 3、respondsToSelector： 判断某个方法是否在.m中实现了
        if([classT respondsToSelector:@selector(method_1)])
        {
            NSLog(@"method_1 实现了！");
        }
        else
        {
            NSLog(@"method_1 没有实现！");
        }
        
        
        //4、superclass 获取对象的父类
        Class cla = [classT superclass];
        NSLog(@"cla的父类:%@",cla);
        
    }
    return 0;
}
