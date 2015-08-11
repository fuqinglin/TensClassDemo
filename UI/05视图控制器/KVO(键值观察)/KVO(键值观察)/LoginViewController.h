//
//  ViewController.h
//  页面间的通信方式（Delegate）
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userEmialTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPassWordTextField;


@end

