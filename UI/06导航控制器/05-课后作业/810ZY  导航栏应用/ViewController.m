//
//  ViewController.m
//  810ZY  导航栏应用
//
//  Created by zxr on 15-8-10.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
#import "CommentViewController.h"
#import "XXViewController.h"

@interface ViewController ()
@property (nonatomic, strong)UIImageView *bgimage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.bgimage];
    
    self.title = @"首页";
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0, 0, 36, 36);
    [leftButton setImage:[UIImage imageNamed:@"btn_nav_subscription_normal"] forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(leftbuttonAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 36, 36);
    [rightButton setImage:[UIImage imageNamed:@"bottom_bar_comment_normal"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightbuttonAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    


    
    // Do any additional setup after loading the view, typically from a nib.
}
- (UIImageView *)bgimage
{
    if (_bgimage == nil)
    {
        _bgimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 640, 1136)];
        _bgimage.image = [UIImage imageNamed:@"bgImage"];
    }
    return _bgimage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)leftbuttonAction
{
    TwoViewController *twocol = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:twocol animated:YES];
}
- (void)rightbuttonAction
{
    CommentViewController *comtent = [[CommentViewController alloc]init];
    XXViewController *navCol = [[XXViewController alloc] initWithRootViewController:comtent];
    [self presentViewController:navCol animated:YES completion:nil];
    
}


@end
