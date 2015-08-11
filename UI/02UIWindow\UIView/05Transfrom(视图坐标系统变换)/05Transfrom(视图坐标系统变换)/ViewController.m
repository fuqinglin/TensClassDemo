//
//  ViewController.m
//  05Transfrom(视图坐标系统变换)
//
//  Created by Kinglin_Fu on 15/8/1.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)buttonAction:(UIButton *)sender {
   
    if (sender.tag == 100)
    {
        // transform: 视图的坐标系统
        // 移动:CGAffineTransformTranslate
       CGAffineTransform newTransform = CGAffineTransformTranslate(self.testView.transform, 100, 200);
        self.testView.transform = newTransform;
        
    }
    else if(sender.tag == 200)
    {
        // 旋转:CGAffineTransformRotate
        CGAffineTransform newTransform = CGAffineTransformRotate(self.testView.transform, 0.2);
        self.testView.transform = newTransform;
        
    }
    else if(sender.tag == 300)
    {
        // 放大:CGAffineTransformScale
        CGAffineTransform newTransform = CGAffineTransformScale(self.testView.transform, 2, 2);
        self.testView.transform = newTransform;
        
    }
    else if(sender.tag == 400)
    {
       // 缩小:CGAffineTransformScale
        CGAffineTransform newTransform = CGAffineTransformScale(self.testView.transform, 0.5, 0.5);
        self.testView.transform = newTransform;
    }
    else
    {
        // 复原:CGAffineTransformIdentity
        self.testView.transform = CGAffineTransformIdentity;
    }
}


@end
