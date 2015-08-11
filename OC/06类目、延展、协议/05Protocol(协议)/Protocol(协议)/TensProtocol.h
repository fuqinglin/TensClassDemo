//
//  TensProtocol.h
//  Protocol(协议)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TensProtocol <NSObject>


@required // 必须实现的协议方法
- (void)finishHomeWork;
- (void)goHome;

@optional // 可选实现的协议方法
- (void)eat;

@end
