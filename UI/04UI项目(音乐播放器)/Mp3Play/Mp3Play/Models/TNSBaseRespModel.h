//
//  TNSBaseRespModel.h
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNSBaseRespModel : NSObject

/**
*  使用KVC机制创建对象
*
*  @param obj data json数据
*
*  @return 当前对象
*/
- (id)initWithObject:(id)obj;

@end
