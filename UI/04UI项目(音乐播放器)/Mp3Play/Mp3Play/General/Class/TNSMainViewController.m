//
//  TNSMainViewController.m
//  Mp3Play
//
//  Created by Chen on 15/7/29.
//  Copyright (c) 2015年 Chen. All rights reserved.
//

#import "TNSMainViewController.h"

#import <AVFoundation/AVFoundation.h>

#import "NSNumber+Addition.h"
//#import "TNSMusicInfoResp.h"
//#import "TNSMusicDetailInfoResp.h"
//
@interface TNSMainViewController ()
<AVAudioPlayerDelegate>
{
    NSTimer *_timer;
    NSDictionary *_currentMusicInfo;
    NSInteger _currentIndex;
}

@property (strong, nonatomic) NSArray *musicList;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

//@property (strong, nonatomic) UIImageView *albumImageView;
@property (strong, nonatomic) UIImageView   *backgroundView;
@property (strong, nonatomic) UILabel  *startTimeLabel;
@property (strong, nonatomic) UILabel  *endTimeLabel;
@property (strong, nonatomic) UISlider *slider;
@property (strong, nonatomic) UIButton *playButton;
@property (strong, nonatomic) UIButton *lastButton;
@property (strong, nonatomic) UIButton *nextButton;
@property (strong, nonatomic) UILabel *lableDown;
@property (strong, nonatomic) UILabel *lableUp;
@property (strong, nonatomic) UIButton *listButton;
@property (strong, nonatomic) UIButton *downButton;
@property (strong, nonatomic) UIButton *pingButton;
@property (strong, nonatomic) UIButton *xunButton;
@property (strong, nonatomic) UIButton *zhuanButton;
@property (strong, nonatomic) UIImageView   *imageView;


/**
 *  准备播放音乐
 */
- (void)prepareforMusicPlay;

/**
 *  设置子view的frame
 */
- (void)setupSubViewFrame;

/**
 *  更新进度条
 */
- (void)updateSliderValue;

/**
 * 进度条改变
 */
- (void)sliderValueChange:(UISlider *)slider;

/**
 *  播放音乐
 */
- (void)playButtonOnClicked:(UIButton *)sender;

/**
 *  切换到上一首音乐
 */
- (void)lastButtonOnClicked:(UIButton *)sender;

/**
 *  切换到下一首音乐
 */
- (void)nextButtonOnClicked:(UIButton *)sender;

/*
 * 切歌
 */
- (void)passMusic;

@end

@implementation TNSMainViewController


#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.backgroundView];
    [self.backgroundView addSubview:self.playButton];
    [self.backgroundView addSubview:self.lastButton];
    [self.backgroundView addSubview:self.nextButton];
    [self.backgroundView addSubview:self.slider];
    [self.backgroundView addSubview:self.startTimeLabel];
    [self.backgroundView addSubview:self.endTimeLabel];
    [self.backgroundView addSubview:self.lableUp];
    [self.backgroundView addSubview:self.lableDown];
    [self.backgroundView addSubview:self.imageView];
    [self.backgroundView addSubview:self.listButton];
    [self.backgroundView addSubview:self.downButton];
    [self.backgroundView addSubview:self.zhuanButton];
    [self.backgroundView addSubview:self.xunButton];
    [self.backgroundView addSubview:self.pingButton];
    
    _currentMusicInfo = [self.musicList firstObject];
    
    [self prepareforMusicPlay];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self setupSubViewFrame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Private

//设置控件尺寸

- (void)setupSubViewFrame {
    
    self.backgroundView.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight);
    self.playButton.frame = CGRectMake(kScreenWidth/2.0-81/2.0, kScreenHeight-72, 81, 50);
    self.lastButton.frame = CGRectMake(45, kScreenHeight-80, 60, 60);
    self.nextButton.frame = CGRectMake(kScreenWidth - 10 - 60 - 40, kScreenHeight-80, 60, 60);
    self.startTimeLabel.frame = CGRectMake(15, kScreenHeight-105, 50, 21);
    self.endTimeLabel.frame = CGRectMake(kScreenWidth - 15 - 30, kScreenHeight-105, 50, 21);
    self.slider.frame = CGRectMake(60, kScreenHeight-96, kScreenWidth - 120, 5);
    self.imageView.frame = CGRectMake(20, 70, kScreenWidth - 40, kScreenHeight - 220);
    self.lableDown.frame = CGRectMake(0, kScreenHeight-140, kScreenWidth, 40);
    self.lableUp.frame = CGRectMake(0, 20, kScreenWidth, 40);
    
    self.listButton.frame = CGRectMake(kScreenWidth-30, 20, 20, 20);
    self.downButton.frame = CGRectMake(35, kScreenHeight -135, 20, 20);
    self.pingButton.frame = CGRectMake(kScreenWidth-60, kScreenHeight - 133, 20, 20);
    self.xunButton.frame = CGRectMake(15, kScreenHeight - 60, 20, 20);
    self.zhuanButton .frame = CGRectMake(kScreenWidth-35, kScreenHeight - 60, 20, 20);
}
//-----------------------------------xianshimingz------------
- (void)prepareforMusicPlay
{
    self.audioPlayer = nil;
    [self audioPlayer];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = self.audioPlayer.duration;
    [_timer invalidate];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1
                                              target:self
                                            selector:@selector(updateSliderValue)
                                            userInfo:nil
                                             repeats:YES];
    self.slider.value = 0;
    self.startTimeLabel.text = @"00:00";
    self.endTimeLabel.text = [@(self.audioPlayer.duration) formatTimeString];
    self.lableDown.text = _currentMusicInfo[@"actor"];
    self.lableUp.text = _currentMusicInfo[@"name"];
    self.imageView.image = [UIImage imageNamed:_currentMusicInfo[@"imageName"]];

}

- (void)updateSliderValue {
    self.slider.value = self.audioPlayer.currentTime;
    self.startTimeLabel.text = [@(self.audioPlayer.currentTime) formatTimeString];
}


#pragma mark - IBActions

- (void)playButtonOnClicked:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    if (sender.selected) {
        [self.audioPlayer play];
        _timer.fireDate = [NSDate distantPast];
    }
    else {
        [self.audioPlayer pause];
        _timer.fireDate = [NSDate distantFuture];
    }
}

- (void)lastButtonOnClicked:(UIButton *)sender
{
    self.playButton.selected = NO;
    _currentIndex--;
    [self passMusic];
}

- (void)nextButtonOnClicked:(UIButton *)sender
{
    self.playButton.selected = NO;
    _currentIndex++;
    [self passMusic];
}


- (void)passMusic
{
    if (_currentIndex < 0) {
        
        _currentIndex = self.musicList.count - 1;
        
    } else if(_currentIndex > self.musicList.count - 1) {
        
        _currentIndex = 0;
    }
    
    _currentMusicInfo = self.musicList[_currentIndex];
    [self prepareforMusicPlay];
    [self.playButton sendActionsForControlEvents:UIControlEventTouchUpInside];

}


- (void)sliderValueChange:(UISlider *)slider
{
    self.audioPlayer.currentTime = slider.value;
}


#pragma mark - AVAudioPlayerDelegate

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    
    
    [self.nextButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


#pragma mark - Custom Accessors

- (UIView *)backgroundView {
    if (_backgroundView == nil) {
        _backgroundView = [[UIImageView alloc] init];
        _backgroundView.userInteractionEnabled = YES;
        _backgroundView.image = [UIImage imageNamed:@"img.png"];
    }
    
    return _backgroundView;
}

-(AVAudioPlayer *)audioPlayer {
    if (_audioPlayer == nil) {
        NSString *musicPath = [[NSBundle mainBundle] pathForResource:_currentMusicInfo[@"name"] ofType:@"mp3"];
        NSURL *musicURL = [NSURL fileURLWithPath:musicPath];
        
        NSError *error;
        _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:musicURL error:&error];
        
        if (error) {
            NSLog(@"播放错误:%@",error);
            return nil;
        }
        _audioPlayer.delegate = self;
        [_audioPlayer prepareToPlay];
    }
    
    
    return _audioPlayer;
}
//获得plist文件路径
- (NSArray *)musicList {
    if (_musicList == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"MusicInfo" ofType:@"plist"];
        _musicList = [NSArray arrayWithContentsOfFile:path];
    }
    
    return _musicList;
}

- (UILabel *)startTimeLabel {
    if (_startTimeLabel == nil) {
        _startTimeLabel = [[UILabel alloc] init];
        _startTimeLabel.font = [UIFont systemFontOfSize:12];
        _startTimeLabel.textColor = [UIColor whiteColor];
        _startTimeLabel.text = [@0 formatTimeString];
    }
    
    return  _startTimeLabel;
}

- (UILabel *)lableDown
{
    
    if (_lableDown == nil)
    {
        _lableDown = [[UILabel alloc] init];
        _lableDown.font = [UIFont systemFontOfSize:15];
        _lableDown.textColor = [UIColor whiteColor];
        _lableDown.textAlignment = NSTextAlignmentCenter;
    }
    return _lableDown;
    
    
}


- (UILabel *)lableUp
{
    if (_lableUp == nil)
    {
        _lableUp = [[UILabel alloc] init];
        _lableUp.font = [UIFont boldSystemFontOfSize:20];
        _lableUp.textColor = [UIColor whiteColor];
        _lableUp.textAlignment = NSTextAlignmentCenter;
    }
    return _lableUp;
    
}

-(UILabel *)endTimeLabel {
    if (_endTimeLabel == nil) {
        _endTimeLabel = [[UILabel alloc] init];
        _endTimeLabel.font = [UIFont systemFontOfSize:12];
        _endTimeLabel.textColor = [UIColor whiteColor];
        _endTimeLabel.text = [@0 formatTimeString];
    }
    
    return _endTimeLabel;
}

-(UISlider *)slider {
    if (_slider == nil) {
        _slider = [[UISlider alloc] init];
        [_slider setThumbImage:[UIImage imageNamed:@"voldrag.png"]
                      forState:UIControlStateNormal];
        [_slider setMinimumTrackImage:[UIImage imageNamed:@"volleft.png"] forState:UIControlStateNormal];
        [_slider setMaximumTrackImage:[UIImage imageNamed:@"volright.png"] forState:UIControlStateNormal];
        [_slider addTarget:self
                    action:@selector(sliderValueChange:)
          forControlEvents:UIControlEventValueChanged];
    }
    
    return _slider;
}

- (UIButton *)playButton {
    if (_playButton == nil) {
        _playButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_playButton setBackgroundImage:[UIImage imageNamed:@"play2.png"]
                               forState:UIControlStateNormal];
        [_playButton setImage:[UIImage imageNamed:@"play3.png"]
                     forState:UIControlStateNormal];
        [_playButton setImage:[UIImage imageNamed:@"pause.png"]
                     forState:UIControlStateSelected];
        [_playButton addTarget:self
                        action:@selector(playButtonOnClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _playButton;
}

- (UIButton *)lastButton {
    if (_lastButton == nil) {
        _lastButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_lastButton setImage:[UIImage imageNamed:@"play4.png"]
                     forState:UIControlStateNormal];
        [_lastButton addTarget:self
                        action:@selector(lastButtonOnClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _lastButton;
}

- (UIButton *)nextButton {
    if (_nextButton == nil)
    {
        _nextButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_nextButton setImage:[UIImage imageNamed:@"play5.png"]
                     forState:UIControlStateNormal];
        [_nextButton addTarget:self
                        action:@selector(nextButtonOnClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _nextButton;
}

-(UIButton *) listButton
{
    if (_listButton == nil)
    {
        _listButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_listButton setImage:[UIImage imageNamed:@"42e@2x.png"] forState:UIControlStateNormal];
    }
    return _listButton;
}

-(UIButton *) pingButton
{
    if (_pingButton == nil)
    {
        _pingButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_pingButton setImage:[UIImage imageNamed:@"liked@2x.png"] forState:UIControlStateNormal];
    }
    return _pingButton;
    
}

-(UIButton *) xunButton
{
    if (_xunButton == nil)
    {
        _xunButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_xunButton setImage:[UIImage imageNamed:@"shunxv3@2x.png"] forState:UIControlStateNormal];
    }
    return _xunButton;
    
}

-(UIButton *) zhuanButton
{
    
    if (_zhuanButton == nil)
    {
        _zhuanButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_zhuanButton setImage:[UIImage imageNamed:@"42x42@2x.png"] forState:UIControlStateNormal];
    }
    return _zhuanButton;
    
}

-(UIButton *) downButton
{
    if (_downButton == nil)
    {
        _downButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_downButton setImage:[UIImage imageNamed:@"xz@2x.png"] forState:UIControlStateNormal];
    }
    return _downButton;
    
    
}
- (UIImageView *) imageView
{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
        _imageView.backgroundColor = [UIColor clearColor];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    
    return _imageView;
    
    
}
@end
