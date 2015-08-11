//
//  Person.h
//  ARC使用
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// 使用copy,如果是可变字符串会被拷贝出一个新的对象，推荐使用copy

// 如果是不可变字符串copy和strong没有区别，都是对对象引用计数 +1.
@property(nonatomic,copy)NSString *name;

// strong不会拷贝新的对象，只会对引用计数 +1
@property(nonatomic,strong)NSString *sex;

@property(nonatomic,assign)int age;

// 非NSString类型用strong
@property(nonatomic,strong)NSArray *array;

- (void)method;

@end
