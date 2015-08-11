//
//  Person.m
//  ARC使用
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"对象销毁了！");
}

- (void)method
{
//    NSString *str = @"abcd";
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"abcd"];
    self.name = str;
    self.sex = str;
    
    [str appendString:@"哈哈"];
    
    NSLog(@"str地址：%p",str);
    NSLog(@"name地址:%p",_name);
    NSLog(@"sex地址:%p",_sex);
    
    NSLog(@"str：%@",str);
    NSLog(@"name:%@",_name);
    NSLog(@"sex:%@",_sex);
}

@end
