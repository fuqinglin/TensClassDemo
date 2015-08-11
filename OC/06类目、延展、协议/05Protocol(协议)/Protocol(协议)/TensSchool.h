//
//  TensSchool.h
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Student;

// TensSchool类声明的一组协议方法，这些协议方法当前类不去实现，由签署协议的类去实现
@protocol TensSchoolProtocol <NSObject>

@required // 必须实现的协议方法
- (void)finishHomeWork:(float)price;
- (void)goHome;

@optional // 可选实现的协议方法
- (void)eat;
@end



@interface TensSchool : NSObject
{
    Student *_student;
    float _price;
}

- (instancetype)initWithStudent:(Student *)student withPrice:(float)price;

- (void)method;

@end
