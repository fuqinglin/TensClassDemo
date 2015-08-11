//
//  Animal.h
//  02、面向对象三大特征—— 继承
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject // 父类 ：NSObject
{
    NSString *_animalName;
    NSString *_type;
}

- (void)eat;
- (void)sleep;

@end
