//
//  main.m
//  02验证手机号
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VerifyPhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isPhoneNum = [@"13210498455" verifyPhoneNumber];
        if (isPhoneNum) {
            
            NSLog(@"合法手机号！");
        }
        else
        {
            NSLog(@"不合法手机号！");
        }
        
    }
    return 0;
}
