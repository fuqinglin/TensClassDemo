//
//  main.m
//  01 邮箱验证_Demo
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ValidateEmail.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isEmail = [ValidateEmail validateEmail:@"4232449873@qq.com"];
        if (isEmail) {
            
            NSLog(@"是合法邮箱！");
        }
        else
        {
            NSLog(@"是不合法邮箱！");
        }
    }
    return 0;
}
