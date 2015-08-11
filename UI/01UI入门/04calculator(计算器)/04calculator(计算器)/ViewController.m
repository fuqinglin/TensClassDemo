//
//  ViewController.m
//  04calculator(计算器)
//
//  Created by Kinglin_Fu on 15/7/31.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableString *_numberString;
    NSMutableArray *_numberArray;
    BOOL _isClear;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _numberString = [[NSMutableString alloc] init];
    _isClear = YES;
}

//　数字按钮事件
- (IBAction)numberButton:(UIButton *)sender {
    
    if (_isClear) {
        _numberString = [[NSMutableString alloc] init];
        [_numberString appendFormat:@"%ld",sender.tag];
        _resultLabel.text = _numberString;
        
        _isClear = NO;
    }
    else
    {
        [_numberString appendFormat:@"%ld",sender.tag];
        _resultLabel.text = _numberString;
        _resultLabel.text = _numberString;
    }
        
}

// 符号按钮事件
- (IBAction)markButtonAction:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"C"])
    {
        _resultLabel.text = @"0";
        _numberString = nil;
        [_numberArray removeAllObjects];
        _isClear = YES;
    }
    else if ([sender.titleLabel.text isEqualToString:@"±"])
    {
        
    }
    else
    {
        [_numberArray addObject:_numberString];
        [self calculateMethod:sender.titleLabel.text];
        _isClear = YES;
    }
}

// 计算方法
- (void)calculateMethod:(NSString *)mark
{
    
//    [_numberArray removeObjectAtIndex:0];
    if ([mark isEqualToString:@"×"]) {
        
        
    }
    else if([mark isEqualToString:@"÷"])
    {
        
    }
    else if([mark isEqualToString:@"−"])
    {
        
    }
    else if([mark isEqualToString:@"+"])
    {
        
    }
    else if([mark isEqualToString:@"%"])
    {
        
    }
    else if([mark isEqualToString:@"="]){
        
    }
}


@end
