//
//  Car.m
//  02、初始化方法init
//
//  Created by Kinglin_Fu on 15/7/21.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Car.h"

@implementation Car

// 重写初始化方法，给属性赋初始值

// instancetype 动态对象类型,它的类型取决于返回对象的类型。只能用于方法的返回值类型，不能用于定义变量。

- (instancetype)init
{
    /*
     self = [super init];
     1、首先对父类进行初始化，先保证父类初始化工作完成
     
     if (self)
     2、要对当前对象进行初始化，前提是当前对象是创建成功的，也就是说父类初始化后返回的当前对象不能为空nil
     */
    self = [super init];
    if (self) {
        
        _brand = @"特斯拉";
        _color = @"红色";
        _carNumber = @"川Ahh32434";
        _maxSpeed = 350;
    }
    
    // 返回初始化后的当前对象
    return self;
}


- (void)carInfo
{
    NSLog(@"brand:%@, color:%@，carNumber:%@, maxSpeed:%.2f",_brand,_color,_carNumber,_maxSpeed);
}


@end
