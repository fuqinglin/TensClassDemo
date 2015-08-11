//
//  Dog.h
//  循环引用
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@interface Dog : NSObject

// 循环引用：两个对象相互持有对方
// 解决：将一方不持有，把一方的strong改为weak
@property(nonatomic, weak)Person *person;

@end
