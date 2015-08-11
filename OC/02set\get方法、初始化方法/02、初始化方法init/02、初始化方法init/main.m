//
//  main.m
//  02、初始化方法init
//
//  Created by Kinglin_Fu on 15/7/21.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *car_1 = [[Car alloc] init];
        
        [car_1 carInfo];
        
        Car *car_2 = [[Car alloc] init];
        [car_2 carInfo];

    }
    return 0;
}
