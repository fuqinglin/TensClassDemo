//
//  Car.h
//  03、自定义初始化方法
//
//  Created by Kinglin_Fu on 15/7/21.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString *_brand;
    NSString *_color;
    NSString *_carNumber;
    float _price;
}


// 自定义初始化方法，传入两个参数

// 注意点：自定义初始化方法必须一init开头后面的单词首字母必须大写。
- (instancetype)initBrand:(NSString *)brand withPrice:(float)price;

- (void)setBrand:(NSString *)brand;
- (NSString *)brand;

- (void)showCarInfo;

@end
