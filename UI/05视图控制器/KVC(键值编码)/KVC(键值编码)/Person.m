//
//  Person.m
//  KVC(键值编码)
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

@end
