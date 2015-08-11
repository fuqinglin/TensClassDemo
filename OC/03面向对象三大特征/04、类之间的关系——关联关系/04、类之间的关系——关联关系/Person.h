//
//  Person.h
//  04、类之间的关系——关联关系
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    
    // person类中包含了book对象的引用，表示 Person和Book类产生了关联关系。
    Book *_book;
}

- (instancetype)initWithName:(NSString *)name withAge:(int)age;

- (void)setBook:(Book *)book;
- (Book *)book;

- (void)readBook;

@end
