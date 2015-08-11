//
//  main.m
//  Test2_03
//
//  Created by tens on 15-7-21.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserManage.h"

/*
 创建一个用户管理程序。要求如下：
 
 1、用户注册，可以输入用户名和初始密码。
 2、用户密码可以修改。
 3、修改密码前先验证旧密码，旧密码输入正确才能修改密码。
 4、密码不能输错三次，输错三次后提示用户并且结束程序。
 5、修改成功后，输出修改后的用户信息
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        char name[20];
        char pwd[16];
        NSLog(@"用户注册");
        NSLog(@"请输入账号:");
        scanf("%s",name);
        NSLog(@"请输入密码:");
        scanf("%s",pwd);
        
        // 把c语言的字符串转为NSString
        NSString *username = [NSString stringWithFormat:@"%s",name];
        NSString *password = [NSString stringWithFormat:@"%s",pwd];
        UserManage *user = [[UserManage alloc]initRegister:username withPassword:password];
        NSLog(@"注册成功！");
        NSLog(@"修改初始密码");
        char oldPwd[16];
        NSLog(@"请输入原密码：");
        scanf("%s",oldPwd);
        NSString *oldpassword = [NSString stringWithFormat:@"%s",oldPwd];
        [user validate:oldpassword];
        
    }
    return 0;
}
