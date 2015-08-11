//
//  UserManage.m
//  Test2_03
//
//  Created by tens on 15-7-21.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import "UserManage.h"

@implementation UserManage

-(instancetype)initRegister:(NSString *)username withPassword:(NSString *)password
{
    self = [super init];
    if (self) {
        _username = username;
        _password = password;
    }
    return self;
    
}

int i = 3; // 允许输入错误的次数
-(void)validate:(NSString *)password {
    
    // isEqualToString 比较两个字符串内容是否相同
    if([password isEqualToString:_password]){
        char pwd[16];
        NSLog(@"原密码正确！请输入新密码：");
        scanf("%s",pwd);
        password = [NSString stringWithFormat:@"%s",pwd];
        [self modifyPassword:password];
        
    }else{
        if(i>1){
            i--;
            char password_[16];
            NSLog(@"原密码错误！请重新输入密码：");
            NSLog(@"您还有%d次机会！",i);
            scanf("%s",password_);
            password = [NSString stringWithFormat:@"%s",password_];
            
            // 验证不通过继续调用当前方法验证
            [self validate:password];
        }else{
            NSLog(@"三次密码错误！无法再次输入..");
        }
    }
}

// 修改密码并且输出用户信息
-(void)modifyPassword:(NSString *)newPassword{
    _password = newPassword;
    NSLog(@"修改成功！用户名：%@，密码：%@",_username,_password);
}

@end
