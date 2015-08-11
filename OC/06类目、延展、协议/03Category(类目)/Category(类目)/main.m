//
//  main.m
//  Category(类目)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+ValidateEmail.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *email = @"2341414@163.com";
//
//        if ([email validateEmail]) {
//            
//            NSLog(@"合法邮箱！");
//        }
//        else
//        {
//            
//            NSLog(@"不合法邮箱！");
//        }
//        
        
       NSString *str = [email substringFromIndex];
       NSString *str1 = [email substringFromIndex:1];
        NSLog(@"str = %@",str);
        NSLog(@"str1 = %@",str1);
        
    }
    return 0;
}
