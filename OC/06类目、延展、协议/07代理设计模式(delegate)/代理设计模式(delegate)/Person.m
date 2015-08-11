//
//  Person.m
//  代理设计模式(delegate)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Person.h"
//#import "Agency.h"
//#import "Agency_1.h"

@implementation Person
- (instancetype)initWith:(id<FindHouseProtocol>)delegate
{
    self = [super init];
    if (self) {
        
        _delegete = delegate;
        
        [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(toFindHouse:) userInfo:nil repeats:YES];
    }
    
    return self;
}


- (void)toFindHouse:(NSTimer *)timer
{
    float price = [_delegete findHouse];
    
//    float price_ = [_agency_1 findHouse];
    
    if (price < 1000) {
        
        NSLog(@"房租是%.2f,可以了！",price);
        
        [timer invalidate];
    }
    else {
        
        NSLog(@"太贵了，再找！");
    }
    
}


@end
