//
//  main.m
//  03、自定义初始化方法
//
//  Created by Kinglin_Fu on 15/7/21.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 初始化方法只能在创建对象的时候调用，不能多次调用
        Car *car_1 = [[Car alloc] initBrand:@"audi" withPrice:200000];
//        [car_1 initBrand:@"fd" withPrice:20200];
        [car_1 showCarInfo];
        
        NSLog(@"%@",car_1);
        
    }
    return 0;
}
