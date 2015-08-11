//
//  RegisterViewController.h
//  页面间的通信方式（Delegate）
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegisterViewController : UIViewController
{
    NSString *userEmailString;
    NSString *userPassWordString;
}

@property (weak, nonatomic) IBOutlet UITextField *userNikeName;
@property (weak, nonatomic) IBOutlet UITextField *userEmail;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;

@end
