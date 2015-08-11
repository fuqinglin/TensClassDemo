//
//  ViewController.m
//  02界面和控制器的连线
//
//  Created by Kinglin_Fu on 15/7/31.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)butonAction:(UIButton *)sender {
   
    NSString *value1Str = _value1TextField.text;
    NSString *value2Str = _value2TextField.text;
    
    // text：获取输入框的文本数据
    NSString *mark = _markField.text;
    NSInteger relut;
    if ([mark isEqualToString:@"+"]) {
        
        relut = [value1Str integerValue] + [value2Str integerValue];
        
    } else if([mark isEqualToString:@"-"])
    {
        relut = [value1Str integerValue] - [value2Str integerValue];
    }
    else if([mark isEqualToString:@"*"])
    {
        relut = [value1Str integerValue] * [value2Str integerValue];
    }
    else if([mark isEqualToString:@"/"])
    {
        relut = [value1Str integerValue] / [value2Str integerValue];
    }
    else
    {
        NSLog(@"运算符输入错误！");
    }
    
    // 给lebel赋值文本数据
    _resultLabel.text = [NSString stringWithFormat:@"%ld",relut];
    
}

@end
