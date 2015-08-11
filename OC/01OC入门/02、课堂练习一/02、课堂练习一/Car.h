//
//  Car.h
//  02、课堂练习一
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString *_brand;
    NSString *_color;
    NSString *_carNumber;
}

- (void)start;   // 启动
- (void)speedUp; // 加速
+ (void)brake;   // 刹车


@end
