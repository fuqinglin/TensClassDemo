//
//  TNSBaseReqModel.h
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNSBaseReqModel : NSObject

/**
 *  创建请求对象
 *
 *  @return 请求对象
 */
- (NSData *)jsonData;

@end
