//
//  UserManage.h
//  Test2_03
//
//  Created by tens on 15-7-21.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserManage : NSObject
{
    NSString *_username;
    NSString *_password;
}

-(instancetype)initRegister:(NSString *)username withPassword:(NSString *)password;
-(void)validate:(NSString *)password;         //验证密码
-(void)modifyPassword:(NSString *)newPassword;//修改密码

//@property NSString *_username;
//@property NSString *_password;

@end
