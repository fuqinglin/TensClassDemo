//
//  Computer.h
//  01、类的创建
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject
{
    // 声明类的属性(实例变量)
    NSString *_brand; // 品牌
    NSString *_CPUTpye; // CPU类型
    float _price;        // 价格
}


// 定义类的方法

// 1、实例方法，用 - 表示
- (void)computerMethod;
- (NSString *)showInfo;
- (int)method;
- (NSString *)runSoft:(NSString *)softName;


/* 方法名称：setBrand:withCPUType:
    返回值类型：void 用括号包含
    参数：brand，cpu
 */
- (void)setBrand:(NSString *)brand withCPUType:(NSString *)cpu;

//2、 类方法，用 + 表示
+ (void)method_classs;


@end
