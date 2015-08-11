//
//  Agency_1.m
//  代理设计模式(delegate)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Agency_1.h"

@implementation Agency_1

-(float)findHouse
{
    float price = (float)(arc4random() % 2000);
    
    return price;
}

@end
