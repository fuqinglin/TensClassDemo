//
//  TwoViewController.m
//  810ZY  导航栏应用
//
//  Created by zxr on 15-8-10.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import "TwoViewController.h"
#import "DetailViewController.h"

@interface TwoViewController ()
@property (nonatomic,strong)UIImageView *bgimage;
@property (nonatomic, strong)UIButton *jobsButton;
@property (nonatomic, strong)UIButton *jonathan;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"人物";
    
    [self.view addSubview:self.bgimage];
    [self.bgimage addSubview:self.jobsButton];
    [self.bgimage addSubview:self.jonathan];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIImageView *)bgimage
{
    if (_bgimage == nil)
    {
        _bgimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 640, 1136)];
        _bgimage.image = [UIImage imageNamed:@"bgImage"];
        _bgimage.userInteractionEnabled = YES;

    }
    return _bgimage;
}


- (UIButton *)jobsButton
{
    if (_jobsButton == nil) {
        _jobsButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _jobsButton.frame = CGRectMake(10, 50, 140, 99);
        _jobsButton.tag = 10;
        [_jobsButton setImage:[UIImage imageNamed:@"jobs.jpg"] forState:UIControlStateNormal];
        [_jobsButton addTarget:self action:@selector(imageButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _jobsButton;
}


- (UIButton *)jonathan
{
    if (_jonathan == nil) {
        _jonathan = [UIButton buttonWithType:UIButtonTypeCustom];
        _jonathan.frame = CGRectMake(170, 50, 140, 99);
        _jonathan.tag = 20;
        [_jonathan setImage:[UIImage imageNamed:@"jonathan.jpg"] forState:UIControlStateNormal];
        [_jonathan addTarget:self action:@selector(imageButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _jonathan;
}


- (void)imageButtonAction:(UIButton *)button
{
    DetailViewController *detailCol = [[DetailViewController alloc] init];
    
    if (button.tag == 10) {
        
        detailCol.imageName = @"jobs.jpg";
        detailCol.detailText = @"他是一个美国式的英雄，几经起伏，但依然屹立不倒，就像海明威在《老人与海》中说到的，一个人可以被毁灭，但不能被打倒。他创造了“苹果”，掀起了个人电脑的风潮，改变了一个时代，但却在最顶峰的时候被封杀，从高楼落到谷底，但是12年后，他又卷土重来，重新开始第二个“斯蒂夫·乔布斯”时代。";
    }
    else if(button.tag == 20)
    {
        detailCol.imageName = @"jonathan.jpg";
        detailCol.detailText = @"去年年底，《财富》杂志把乔纳森.伊夫评选为世界上最聪明的设计师：“每个漫步在纽约市现代艺术博物馆或巴黎蓬皮杜国家艺术中心的人，都会看到他早期的代表产品。但与大多数博物馆里的创新家不同，伊夫能够将他的智慧融入设计中，并为大众所喜爱——包括他那要求严苛的老板。他的确非常聪明。”最重要的一点还在于：“乔纳森.伊夫不仅为苹果公司，而且给更广阔的设计界设定了方向。";
    }
    
    [self.navigationController pushViewController:detailCol animated:YES];
    
}


@end
