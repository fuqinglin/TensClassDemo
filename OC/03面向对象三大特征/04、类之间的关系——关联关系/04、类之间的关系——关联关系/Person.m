//
//  Person.m
//  04、类之间的关系——关联关系
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name withAge:(int)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    
    return self;
}


- (void)setBook:(Book *)book
{
    _book = book;
}

- (Book *)book
{
    return _book;
}


- (void)readBook
{
    // 使用关联的对象调用这个类的实例方法和设置属性值
    [_book showInfo];
    NSLog(@"书的价格：%.2f",_book.price);
}

@end
