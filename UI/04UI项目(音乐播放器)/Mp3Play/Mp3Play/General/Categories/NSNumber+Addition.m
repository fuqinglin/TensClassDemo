//
//  NSNumber+Addition.m
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "NSNumber+Addition.h"

@implementation NSNumber (Addition)

- (NSString *)formatTimeString

{
    int m = [self intValue] / 60;
    int s = [self intValue] %60;
    NSString *string = [NSString stringWithFormat:@"%02d:%02d", m, s];
    return string;
}

- (NSString *) textlist
{
    NSString *t  = [self stringValue];
    NSString *tt = [NSString stringWithFormat:@"%@",t];
    return tt;
}



@end
