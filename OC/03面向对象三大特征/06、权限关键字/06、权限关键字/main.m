//
//  main.m
//  06、权限关键字
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc] init];
        
        per->_name = @"qqq"; // 公开类型的属性外部可以访问
        NSLog(@"name :%@",per->_name);
        
//        per->_sex = @"女"; 外不能访问保护类型的属性
//        per->_age = 20; 外部文件不能访问私有属性
        
        
    }
    return 0;
}
