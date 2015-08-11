//
//  main.m
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "TensSchool.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stu = [[Student alloc] init];
        TensSchool *school = [[TensSchool alloc] initWithStudent:stu withPrice:10000];
        [school method];
        // 谁实现了协议方法谁去调用
//        [stu finishHomeWork];
//        [stu goHome];
//        [stu eat];
    }
    return 0;
}
