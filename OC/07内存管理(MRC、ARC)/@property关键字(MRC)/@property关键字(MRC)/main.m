//
//  main.m
//  @property关键字(MRC)
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stu = [[Student alloc] init];
        stu.name = @"wwww";
       NSString *name = stu.name;
        NSLog(@"name:%@",name);
        
//        stu.sex = @"男";
        NSString *sex = stu.sex;
        
    }
    return 0;
}
