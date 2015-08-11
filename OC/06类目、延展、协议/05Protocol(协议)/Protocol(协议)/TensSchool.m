//
//  TensSchool.m
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "TensSchool.h"
#import "Student.h"

@implementation TensSchool

- (instancetype)initWithStudent:(Student *)student withPrice:(float)price
{
    self = [super init];
    if (self) {
        
        _student = student;
        _price = price;
    }
    
    return self;
}


- (void)method
{
    [_student finishHomeWork:_price];
}




@end
