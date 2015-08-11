//
//  Car.m
//  03、自定义初始化方法
//
//  Created by Kinglin_Fu on 15/7/21.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initBrand:(NSString *)brand withPrice:(float)price
{
    self = [super init];
    if (self) {
        
        // 给属性赋值
        _brand = brand;
        _price = price;
    }
    
    return self;
}

- (void)setBrand:(NSString *)brand
{
    _brand = brand;
}

- (NSString *)brand
{
    return _brand;
}

- (void)showCarInfo
{
    NSLog(@"%@汽车价格%.2f",_brand,_price);
}


// 覆description方法，当使用NSLog()去输出一个对象数据时会自动调用这个方法。
- (NSString *)description
{
    return [NSString stringWithFormat:@"brand:%@, color:%@, carNumber:%@, price:%.2f", _brand,_color,_carNumber,_price];
}


@end
