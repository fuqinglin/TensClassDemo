//
//  TNSBaseRespModel.m
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "TNSBaseRespModel.h"

@implementation TNSBaseRespModel

#pragma mark - Init

- (id)initWithObject:(id)obj {
    if (self = [super init])
    {
        if ([obj isKindOfClass:[NSData class]])
        {
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:obj options:NSJSONReadingAllowFragments error:nil];
            [self setValuesForKeysWithDictionary:dictionary];
            
            NSLog(@"%@:%@",NSStringFromClass(self.class),[[NSString alloc] initWithData:obj encoding:NSUTF8StringEncoding]);
        }
        else if ([obj isKindOfClass:[NSDictionary class]]) {
            [self setValuesForKeysWithDictionary:obj];
        }
    }
    return self;
}

/**
 *  No find this property
 */
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"UndeFinedKey:%@",key);
}

@end
