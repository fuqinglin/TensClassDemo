//
//  Agency.m
//  代理设计模式(delegate)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Agency.h"

@implementation Agency

-(float)findHouse
{
    // arc4random() 参数随机正整数
    float price = (float)(arc4random() % 2000);
    
    return price;
}

@end
