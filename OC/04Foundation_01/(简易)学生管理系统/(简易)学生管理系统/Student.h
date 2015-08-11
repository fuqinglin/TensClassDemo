//
//  Student.h
//  (简易)学生管理系统
//
//  Created by Kinglin_Fu on 15/7/27.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    NSString *_sex;
    NSInteger _stuClass;
    float _ocScore;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setSex:(NSString *)sex;
- (NSString *)sex;

- (void)setStuClass:(NSInteger)classNum;
- (NSInteger)stuClass;

- (void)setOcScore:(float)score;
- (float)ocScore;

@end
