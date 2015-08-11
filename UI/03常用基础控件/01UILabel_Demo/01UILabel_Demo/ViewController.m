//
//  ViewController.m
//  01UILabel_Demo
//
//  Created by qinglinfu on 15/8/3.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //===================UILabel 常用属性和方法===================
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    [self.view addSubview:label];
    
    // 1、text label显示的文本
    label.text = @"解放垃圾费拉数据房间费拉里说放假了；按时间发来撒飞洒浪费；萨发货快恢复和伤口恢复卡拉是飞洒恢复";
    
    // 2、backgroundColor 设置背景颜色
    label.backgroundColor = [UIColor blackColor];
    
    // 3、textColor 设置文本的颜色
    label.textColor = [UIColor whiteColor];
    
    // 4、systemFontOfSize 设置文本的字体大小，使用系统默认的字体
        label.font = [UIFont systemFontOfSize:12];
    
    // 5、boldSystemFontOfSize 设置加粗的字体
        label.font = [UIFont boldSystemFontOfSize:30];
    
    // 6、获取系统所有的字体名称 familyNames
    NSArray *fonts = [UIFont familyNames];
    NSLog(@"fonts = %@",fonts);
    
    // fontWithName：size 设置指定的字体和字号
    NSString *fontName = fonts[6];
    label.font = [UIFont fontWithName:fontName size:20];
    
    //7、textAlignment 文字的显示位置：居左，居中，居右
    label.textAlignment = NSTextAlignmentCenter;
    
    //8、numberOfLines 指定文本显示的行数，默认是1 ,设置为 0 ，表示根据文字自动显现行数
    label.numberOfLines = 0;
    
    //9、sizeToFit 让label的高度自适应文本显示内容的高度，高度由label的宽度决定
    [label sizeToFit];
    
    // 10、shadowColor 设置文字的阴影颜色
    label.shadowColor = [UIColor redColor];
    
    // 11、shadowOffset 设置阴影的尺寸
    label.shadowOffset = CGSizeMake(2,1);
}



@end
