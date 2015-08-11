//
//  StudentManager.h
//  (简易)学生管理系统
//
//  Created by Kinglin_Fu on 15/7/27.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentManager : NSObject
{
    NSMutableArray *_stuArray;
}

// 添加学生
- (void)addStudent;

// 更新学生信息
- (void)updateStudent;

// 找出最好成绩的学生
- (void)bestScoreStudent;

// 班级平均分
- (void)classAverage;


@end
