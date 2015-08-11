//
//  StudentManager.m
//  (简易)学生管理系统
//
//  Created by Kinglin_Fu on 15/7/27.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "StudentManager.h"
#import "Student.h"

@implementation StudentManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // 创建用于保存学生的数组
        _stuArray = [[NSMutableArray alloc] init];
    }
    return self;
}


#pragma mark - 信息的输入
- (void)inputName:(Student *)stu
{
    NSLog(@"姓名：");
    char name[20];
    scanf("%s",name);
    NSString *name_ = [NSString stringWithFormat:@"%s",name];
    stu.name = name_;
}

- (void)inputSex:(Student *)stu
{
    NSLog(@"性别：1表示女，0表示男");
    int sexNum;
    scanf("%d",&sexNum);
    if (sexNum == 0) {
        
        stu.sex = @"男";
    }
    else if(sexNum == 1)
    {
        stu.sex = @"女";
    }
    else{
        // 默认性别
        stu.sex = @"女";
    }
}

- (void)inputClass:(Student *)stu
{
    NSLog(@"班级1~3班：");
    NSInteger classNum;
    scanf("%ld",&classNum);
    while (classNum > 3 || classNum < 1) {
        NSLog(@"班级输入错误，请重新输入：");
        scanf("%ld",&classNum);
    }
    stu.stuClass = classNum;
}

- (void)inputScore:(Student *)stu
{
    NSLog(@"OC成绩0 ~ 100：");
    float score_oc;
    scanf("%f",&score_oc);
    stu.ocScore = score_oc;
}


#pragma mark - 添加学生
- (void)addStudent
{
    NSLog(@"请输入需要添加的学生人数：");
    int count;
    scanf("%d",&count);
    
    for (int i = 0; i < count; i++) {
        
        Student *stu = [[Student alloc] init];
        NSLog(@"请输入第%d个学生的信息：",i + 1);
        [self inputName:stu];
        [self inputSex:stu];
        [self inputClass:stu];
        [self inputScore:stu];
        
        // 将学生保存到数组中
        [_stuArray addObject:stu];
    }
}


#pragma mark - 更新学生
- (void)updateStudent
{
    NSLog(@"请输入要修改的学生所在位置：");
    int index;
    scanf("%d",&index);
    if (index > _stuArray.count - 1 || index < 0) {
        
        NSLog(@"输入错误，没有这个位置，请重新输入：");
        [self updateStudent];
    }
    
    // 获取指定位置的学生对象
    if (_stuArray.count > 0) {
        
        // 根据位置获取学生对象
        Student *indexStu = [_stuArray objectAtIndex:index];
        
        NSLog(@"请选择要修改的信息：0:姓名，1：性别，2：班级，3：OC成绩");
        int num;
        scanf("%d",&num);
        switch (num) {
            case 0:
            
                [self inputName:indexStu];
                break;
            case 1:
            
                [self inputSex:indexStu];
                break;
            case 2:
                [self inputClass:indexStu];
                
                break;
            case 3:
                [self inputScore:indexStu];
                break;
                
            default:
                NSLog(@"输入错误！");
                break;
        }
    }
    else
    {
        NSLog(@"还没有添加学生,是否添加学生？1: 添加， 0: 不添加");
        int addNum;
        scanf("%d",&addNum);
        if (addNum == 1) {
            
            [self addStudent];
        }
        else
        {
            return;
        }
    }
}

#pragma mark - 成绩最好的学生
- (void)bestScoreStudent
{
    Student *bestStu = _stuArray[0];
    
    for (Student *stu in _stuArray) {
        
        if (stu.ocScore > bestStu.ocScore) {

            bestStu = stu;
        }
    }
    
    NSLog(@"成绩最好的学生：%@",bestStu);
}

#pragma mark - 班级平均分
- (void)classAverage
{
    int num_1 = 0,num_2 = 0,num_3 = 0;
    float sum_1 = 0,sum_2 = 0,sum_3 = 0;
    for (Student *stu in _stuArray) {
        switch (stu.stuClass) {
            case 1:
            {
                sum_1 += stu.ocScore;
                num_1++;
            }
                break;
            case 2:
            {
                sum_2 += stu.ocScore;
                num_2++;
            }
                
                break;
            case 3:
            {
                sum_3 += stu.ocScore;
                num_3++;
            }
                break;
                
            default:
                NSLog(@"出错！");
                break;
        }
    }
    
    float avg_1 = sum_1 / num_1;
    float avg_2 = sum_2 / num_2;
    float avg_3 = sum_3 / num_3;
    NSLog(@"各班平均分：一班：%.2f  二班：%.2f  三班：%.2f",avg_1,avg_2,avg_3);
}

@end
