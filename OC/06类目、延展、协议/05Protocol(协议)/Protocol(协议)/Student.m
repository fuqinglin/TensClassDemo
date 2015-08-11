//
//  Student.m
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Student.h"

@implementation Student

#pragma mark - <TensSchoolProtocol>
- (void)finishHomeWork:(float)price
{
    NSLog(@"学费：%.2f！",price);
}

- (void)goHome
{
    NSLog(@"晚上记得回家！");
}

- (void)eat
{
    NSLog(@"想吃就吃！");
}

@end
