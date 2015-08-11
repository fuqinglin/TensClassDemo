//
//  NSString+VerifyPhoneNumber.m
//  02验证手机号
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "NSString+VerifyPhoneNumber.h"

@implementation NSString (VerifyPhoneNumber)

- (BOOL)verifyPhoneNumber
{
    if (self.length == 11) {       // 判断是不是11位
        
        for (int i = 0; i < self.length; i++)
        {
            char c = [self characterAtIndex:i]; // 从NSString中获取单个字符

            if (c > 57 || c < 48) // 判断是否是纯数字，比较ASCII码。0~9 对应ASCII范围 48 ~ 57
            {
                return NO;
            }
            else
            {                    // 判断第一位是不是 1
                if (i == 0 && c != '1') {
                    
                    return NO;
                }                // 判断第二位是不是 3 4 5 8 这些数字
                else if(i == 1 && c != '3' && c != '4' && c != '5' && c != '7' && c != '8')
                {
                    return NO;
                }
            }
        }
        return YES;
    }
    
    return NO;
}

@end
