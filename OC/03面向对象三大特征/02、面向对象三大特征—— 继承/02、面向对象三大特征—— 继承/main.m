//
//  main.m
//  02、面向对象三大特征—— 继承
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cat.h"
#import "Rabbit.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Cat *cat = [[Cat alloc] init];
//        [cat sleep]; // 调用继承父类的方法
//        [cat eat]; // 调用子类覆写后的方法
        [cat testMethod];
        
    }
    return 0;
}
