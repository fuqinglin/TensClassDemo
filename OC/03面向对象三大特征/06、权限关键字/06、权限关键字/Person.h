//
//  Person.h
//  06、权限关键字
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    
    @protected  // 默认
    NSString *_sex;
    
    @private
    int _age;
}

//@private OC中的权限关键字不能修饰方法
//- (void)test;
@end



