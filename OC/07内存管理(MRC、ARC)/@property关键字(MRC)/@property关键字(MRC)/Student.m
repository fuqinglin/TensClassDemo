//
//  Student.m
//  @property关键字(MRC)
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)test
{
    NSLog(@"name:%@",_name);
}

// MRC下NSString类型的set方法实现
- (void)setName:(NSString *)name
{
    if (_name != name) {
        [_name release];     // 先释放原来持有的对象
        
        _name = [name copy]; // 再持有新的对象
    }
}

// 基本数据类型set方法
- (void)setAge:(int)age
{
    _age = age;
}

// 非NSString对象的set方法实现
- (void)setArray:(NSArray *)array
{
    if (_array != array) {
        
        [_array release];
        
        _array = [array retain];
    }
}

@end
