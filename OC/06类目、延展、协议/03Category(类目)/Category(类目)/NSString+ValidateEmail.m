//
//  NSString+ValidateEmail.m
//  Category(类目)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "NSString+ValidateEmail.h"

@implementation NSString (ValidateEmail)

- (BOOL)validateEmail
{
    // @ .com
    NSRange range_1 = [self rangeOfString:@"@"];
    NSRange range_2 = [self rangeOfString:@".com"];
    
    if (range_1.location != NSNotFound && range_2.location != NSNotFound) {
        
        return YES;
    }
    
    return NO;
}


- (NSString *)substringFromIndex;
{
    return @"123456789";
}


- (NSString *)substringFromIndex:(NSUInteger)from
{
    NSLog(@"from = %ld",from);
    
    return  @"hello";
}


@end
