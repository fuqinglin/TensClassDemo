//
//  Person.h
//  代理设计模式(delegate)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

//@class Agency;
//@class Agency_1;

@protocol FindHouseProtocol <NSObject>

- (float)findHouse;

@end

/*
 代理设计模式的优点：
 1、实现类之间的通信（数据的传递）
 2、降耦合，减少类和类之间的关系
 */
@interface Person : NSObject
{
//    Agency *_agency;
//    Agency_1 *_agency_1;
    
    // 代表实现了协议的所有对象，没有具体指哪个对象
    id<FindHouseProtocol>_delegete;
}

- (instancetype)initWith:(id<FindHouseProtocol>)delegate;

@end
