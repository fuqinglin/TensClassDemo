//
//  JobsViewController.m
//  810ZY  导航栏应用
//
//  Created by zxr on 15-8-10.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView.image = [UIImage imageNamed:_imageName];
    _textView.text = _detailText;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
