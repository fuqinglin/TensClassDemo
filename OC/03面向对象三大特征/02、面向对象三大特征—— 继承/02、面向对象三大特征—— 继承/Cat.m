//
//  Cat.m
//  02、面向对象三大特征—— 继承
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Cat.h"

@implementation Cat

// 继承特性的优点：将重复相同的代码作为父类，子类继承。从而达到代码复用。

// 方法覆写：对继承下来的方法的扩展或者重新实现。
- (void)eat
{
    /*注意点：
        直接调用父类的方法，当子类覆写父类的方法时，
        首先要保证父类中的方法不被删除，就要先调用父类原有的方法.
     */
    [super eat];
    NSLog(@"猫吃鱼！");
}


- (void)testMethod
{
    // 当子类覆写方法后先调用子类的方法，如果没有覆写就调用父类的方法。
    [self eat];
}

@end
