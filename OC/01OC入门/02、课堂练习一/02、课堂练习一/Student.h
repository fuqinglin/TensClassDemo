//
//  Student.h
//  02、课堂练习一
//
//  Created by Kinglin_Fu on 15/7/20.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    NSString *_sex;
    int _age;
    NSInteger stuID;
}

- (void)studyiOS:(NSString *)name;
+ (void)studyEnglish;
- (void)setName:(NSString *)name withAge:(int)age;


@end
