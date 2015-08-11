//
//  TNSMusicDetailInfoResp.h
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "TNSBaseRespModel.h"

@interface TNSMusicDetailInfoResp : TNSBaseRespModel

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *imageName;
@property (copy, nonatomic) NSString *actor;

@end
