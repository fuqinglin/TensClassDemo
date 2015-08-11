//
//  Book.m
//  04、类之间的关系——关联关系
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype)initWithBookName:(NSString *)bookName withAuthor:(NSString *)author
{
    self = [super init];
    if (self) {
        
        _bookName = bookName;
        _author = author;
    }
    return self;
}

- (void)setPrice:(float)price
{
    _price = price;
}

- (float)price
{
    return _price;
}


- (void)showInfo
{
    NSLog(@"苹果公司的发展历史！");
}


@end
