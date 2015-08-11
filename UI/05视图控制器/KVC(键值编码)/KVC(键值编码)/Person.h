//
//  Person.h
//  KVC(键值编码)
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject
{
    @private
    NSString *_name;
    NSString *_sex;
    Book *_book;
}

//@property (nonatomic, copy)NSString *name;
//@property (nonatomic, copy)NSString *sex;

@end
