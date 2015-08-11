//
//  NSString+ValidateEmail.h
//  Category(类目)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ValidateEmail)
{
//    NSString *_value;  错误：类目只能对方法扩展，不能扩展属性
}

- (BOOL)validateEmail;

//- (BOOL)isEqualToString:(NSString *)aString;


// 类目可以对原有方法覆写，会优先调用覆写后的方法。
- (NSString *)substringFromIndex:(NSUInteger)from;


// OC不允许方法重载
//- (NSString *)substringFromIndex:(NSString *)from;

- (NSString *)substringFromIndex;

@end
