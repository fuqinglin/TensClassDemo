//
//  Student.m
//  02、课堂练习一
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)studyiOS:(NSString *)name
{
    NSLog(@"%@在学习iOS",name);
}

+ (void)studyEnglish
{
    NSLog(@"正在学习英语！");
}

- (void)setName:(NSString *)name withAge:(int)age
{
    NSLog(@"name:%@, age:%d",name,age);
}



@end
