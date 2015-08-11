//
//  RegisterViewController.m
//  页面间的通信方式（Delegate）
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)backAction:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)registerAction:(UIButton *)sender {
    
//    userEmailString = self.userEmail.text;
    
    // 通过KVC或者set方法 设置属性值才能触发KVO
    [self setValue:self.userEmail.text forKey:@"userEmailString"];
    
    [self setValue:self.userPassword.text forKey:@"userPassWordString"];
    
    NSLog(@"%@",userEmailString);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
