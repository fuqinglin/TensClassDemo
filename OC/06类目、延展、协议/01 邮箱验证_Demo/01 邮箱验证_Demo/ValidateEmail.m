//
//  ValidateEmail.m
//  01 邮箱验证_Demo
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ValidateEmail.h"

@implementation ValidateEmail

+ (BOOL)validateEmail:(NSString *)emial
{
    // @ .com
    NSRange range_1 = [emial rangeOfString:@"@"];
    NSRange range_2 = [emial rangeOfString:@".com"];
    
    if (range_1.location != NSNotFound && range_2.location != NSNotFound) {
        
        return YES;
    }
    
    return NO;
}

@end
