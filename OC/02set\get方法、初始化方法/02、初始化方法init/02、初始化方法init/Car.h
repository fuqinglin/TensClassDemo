//
//  Car.h
//  02、初始化方法init
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
    float _maxSpeed;
}

- (void)carInfo;


@end
