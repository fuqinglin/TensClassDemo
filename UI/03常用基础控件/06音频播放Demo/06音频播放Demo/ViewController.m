//
//  ViewController.m
//  06音频播放Demo
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

}
- (IBAction)buttonAction:(UIButton *)sender {
    
    if (sender.tag == 10) {
        // 步骤：
        // 1、获取音乐所在的文件路径，Resource：文件名，Type：文件格式
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"海阔天空" ofType:@"mp3"];
        
        // 2、将文件路径转为URL格式:fileURLWithPath
        NSURL *musicURL = [NSURL fileURLWithPath:filePath];
        
        // 3、使用AVAudioPlayer创建音频播放器并且将音乐URL交给播放器播放
        self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:musicURL error:nil];

        // 4、播放音乐
        [self.audioPlayer play];
        
    }
    else if(sender.tag == 20)
    {
        [self.audioPlayer pause]; // 暂停
    }
    else if(sender.tag == 30)
    {
        [self.audioPlayer stop]; // 停止
    }
    else if(sender.tag == 40)
    {
        [self.audioPlayer play]; // 继续播放
    }
}


@end
