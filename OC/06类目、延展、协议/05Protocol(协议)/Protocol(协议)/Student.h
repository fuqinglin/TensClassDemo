//
//  Student.h
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TensSchool.h"


@interface Student : NSObject <TensSchoolProtocol> // 这个类签署了协议，将会去实现协议方法

@end
