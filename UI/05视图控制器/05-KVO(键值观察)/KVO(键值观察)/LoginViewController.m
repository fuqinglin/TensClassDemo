//
//  ViewController.m
//  页面间的通信方式（Delegate）
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()
{
    RegisterViewController *_registerCol;
}


@end

@implementation LoginViewController

- (void)dealloc
{
    // 移除监听
    [_registerCol removeObserver:self forKeyPath:@"userEmailString"];
    [_registerCol removeObserver:self forKeyPath:@"userPassWordString"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _registerCol = [[RegisterViewController alloc] init];
    
    // 监听 _registerCol 对象的 userEmailString 属性
    [_registerCol addObserver:self // 监听对象
                   forKeyPath:@"userEmailString" // 监听的属性名称
                      options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld // 监听的新值还是旧值
                      context:nil];
    
    [_registerCol addObserver:self
                   forKeyPath:@"userPassWordString"
                      options:NSKeyValueObservingOptionNew context:nil];


}


- (IBAction)loginAction:(UIButton *)sender {
   

}

- (IBAction)toRegist:(UIButton *)sender {
    
    
    [self presentViewController:_registerCol animated:YES completion:nil];
}



// 监听的属性值改变后调用的方法
- (void)observeValueForKeyPath:(NSString *)keyPath // 监听的属性名称
                      ofObject:(id)object // 监听的对象
                        change:(NSDictionary *)change // 监听到的值包含 new | old 值
                       context:(void *)context
{
    
    NSLog(@"监听到属性改变！");
    
    if ([keyPath isEqualToString:@"userEmailString"]) {
        
        NSString *newEmail = change[@"new"];
        NSString *oldEmail = change[@"old"];
        self.userEmialTextField.text = newEmail;
        NSLog(@"newEmail:%@",newEmail);
        NSLog(@"oldEmail:%@",oldEmail);
    }
    
    if ([keyPath isEqualToString:@"userPassWordString"]) {
        
        NSString *newPassWord = change[@"new"];
        self.userPassWordTextField.text = newPassWord;
        NSLog(@"newPass:%@",newPassWord);
    }
    
    
}




@end
