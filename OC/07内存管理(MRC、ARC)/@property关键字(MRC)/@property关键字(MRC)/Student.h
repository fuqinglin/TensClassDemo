//
//  Student.h
//  @property关键字(MRC)
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
//    NSString *_name;
//    NSString *_sex;
//    int _age;
}
//- (void)setName:(NSString *)name;
//- (NSString *)name;

/*@property参数：
 1、readonly:只读，只生成get方法
 2、readwrite:可读可写，生成set\get方法，默认，一般不用写
 3、copy: 用于NSString类型，持有对象引用计数+1或者拷贝一个新对象
 4、retain:用于非NSString对象类型，持有对象，引用计数+1
 5、nonatomic： 非原子性
 6、natomic:原子性
 */

// 自动生成set\get方法,并且生成一个带下划线的实例变量
@property(nonatomic, copy)NSString *name; // 不要写成_name;
@property(nonatomic, assign)int age;
@property(nonatomic, copy, readonly)NSString *sex;
@property(nonatomic, retain)NSArray *array;

@end
