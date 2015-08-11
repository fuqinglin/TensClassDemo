//
//  Student.m
//  (简易)学生管理系统
//
//  Created by Kinglin_Fu on 15/7/27.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setName:(NSString *)name
{
    _name = name;
    
}
- (NSString *)name
{
    return _name;
}

- (void)setSex:(NSString *)sex
{
    _sex = sex;
    
}
- (NSString *)sex
{
    return _sex;
}

- (void)setStuClass:(NSInteger)classNum
{
    _stuClass = classNum;
    
}
- (NSInteger)stuClass
{
    return _stuClass;
}


- (void)setOcScore:(float)score
{
    _ocScore = score;
}
- (float)ocScore
{
    return _ocScore;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"姓名：%@, 性别：%@, 班级：%ld班, OC成绩：%.2f", _name,_sex,_stuClass,_ocScore];
}

@end
