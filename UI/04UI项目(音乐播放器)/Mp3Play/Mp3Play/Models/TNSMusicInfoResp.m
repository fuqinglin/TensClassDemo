//
//  TNSMusicInfoResp.m
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "TNSMusicInfoResp.h"

#import "TNSMusicDetailInfoResp.h"

@implementation TNSMusicInfoResp

/**
 *  No find this property
 */
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    if ([key isEqualToString:@"data"]) {
        self.musicInfos = [NSMutableArray array];
        for (NSDictionary *dictionary in value) {
            TNSMusicDetailInfoResp *resp = [[TNSMusicDetailInfoResp alloc] initWithObject:dictionary];
            [self.musicInfos addObject:resp];
        }
    }
    
    NSLog(@"UndeFinedKey:%@",key);
}


@end
