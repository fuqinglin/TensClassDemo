//
//  ViewController.h
//  02界面和控制器的连线
//
//  Created by Kinglin_Fu on 15/7/31.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITextField *value1TextField;
@property (weak, nonatomic) IBOutlet UITextField *markField;
@property (weak, nonatomic) IBOutlet UITextField *value2TextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

