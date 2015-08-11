//
//  Book.h
//  04、类之间的关系——关联关系
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Book : NSObject
{
    NSString *_bookName;
    float _price;
    NSString *_author;
    
    // 两个类相互拥有对方的引用，就是产生了双向的关联关系。
    Person *_person;
}

- (instancetype)initWithBookName:(NSString *)bookName withAuthor:(NSString *)author;

- (void)setPrice:(float)price;
- (float)price;

- (void)showInfo;

@end
