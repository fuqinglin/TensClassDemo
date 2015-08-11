//
//  TNSBaseReqModel.m
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "TNSBaseReqModel.h"
#include "objc/runtime.h"

@interface TNSBaseReqModel ()

/**
 *  获取对象的属性列表
 *
 *  @return 属性列表
 */
- (NSArray *)propertyKeys;

@end

@implementation TNSBaseReqModel


#pragma mark - Public

- (NSData *)jsonData
{
    NSDictionary *bodyData = [self dictionaryWithValuesForKeys:[self propertyKeys]];
    NSError *error;
    NSData *jsonData =  [NSJSONSerialization dataWithJSONObject:bodyData
                                                        options:NSJSONWritingPrettyPrinted
                                                          error:&error];
    if (error) {
        NSLog(@"请求对象错误:%@", error);
        return nil;
    }
    return jsonData;
}


#pragma mark - Private

- (NSArray *)propertyKeys
{
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    NSMutableArray *keys = [[NSMutableArray alloc] initWithCapacity:outCount];
    
    for (i = 0; i < outCount; i++)
    {
        objc_property_t property = properties[i];
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property)
                                                          encoding:NSUTF8StringEncoding];
        [keys addObject:propertyName];
    }
    free(properties);
    return keys;
}


@end
