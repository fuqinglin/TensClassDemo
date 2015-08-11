//
//  ViewController.m
//  05UISlider_Demo
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
    
    //------------------------------------UISlider滑动条------------------------------
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, 100, 200, 25)];
    [self.view addSubview:slider];
    
    // 1、设置滑块value 的范围默认0~1， minimumValue 最小值，maximumValue 最大值
    slider.minimumValue = 0;
    slider.maximumValue = 100;
    
    
    // 2、value 当前的取值
    slider.value = 50;
    
    
    // 3、设置滑块的颜色，minimumTrackTintColor 滑过的颜色，maximumTrackTintColor 没有滑到的颜色
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor blackColor];
    slider.thumbTintColor = [UIColor blueColor];
    
    
    // 4、minimumValueImage \ maximumValueImage 或者用图片设置滑块样式
    [slider setMinimumTrackImage:[UIImage imageNamed:@"com_slider_min_l-Decoded"] forState:UIControlStateNormal];
    [slider setMaximumTrackImage:[UIImage imageNamed:@"com_slider_min_r-Decoded"] forState:UIControlStateNormal];
    
    [slider setThumbImage:[UIImage imageNamed:@"com_thumb_max_n-Decoded.png"] forState:UIControlStateNormal];
    [slider setThumbImage:[UIImage imageNamed:@"com_thumb_max_h-Decoded.png"] forState:UIControlStateHighlighted];
    
    
    // 5、sliderAction 滑动的时候触发的方法，UIControlEventValueChanged 值改变事件
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
}

// 滑块触发的方法
- (void)sliderAction:(UISlider *)slider
{
    NSLog(@"slider value = %.2f",slider.value);
}


@end
