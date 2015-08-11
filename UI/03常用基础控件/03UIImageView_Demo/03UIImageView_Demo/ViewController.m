//
//  ViewController.m
//  03UIImageView_Demo
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
    
    //============================UIImageView 和 UIImage ========================
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 300, 300)];
    //    imageView.image = [UIImage imageNamed:@"image01"];
    [self.view addSubview:imageView];
    
    //----------------------------UIImage图片数据----------------------
    //1、获取图片数据方式一： 通过图片名称获取
    UIImage *image = [UIImage imageNamed:@"image01"];
    //    [self.view addSubview:image]; 错误：image不是视图，是图片数据。父类是NSObject
    
    // 2、获取图片数据方式二：通过图片路径获取
    // 步骤：
    // 1、获取图片的路径
    NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"image01" ofType:@"png"];
    // 2、根据路径获取图片数据内容，保存到 NSData
    NSData *imageData = [NSData dataWithContentsOfFile:filePath];
    // 3、从 NSData 获取 UIImage 数据
    UIImage *image2 = [UIImage imageWithData:imageData];
    // 4、让UIImageView 去显示UIimage
    
    
    // 3、获取图片数据方式三：通过网络获取 (附加)
    /*
     NSString *urlString = @"http://image.baidu.com/detail/newindex?col=%E6%9C%8D%E9%A5%B0&tag=%E6%97%B6%E5%B0%9A%E5%A4%A7%E7%89%87&tag3=%E6%97%B6%E5%B0%9A%E6%9D%82%E5%BF%97&filter=&hasstock=1&dresstype=0&hostname=&dressid=-1&req=0&pn=1&pid=13622984025&aid=0&setid=110413&user_id=10086&sort=0&fr=&from=1";
     
     NSData *URLImageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
     
     UIImage *urlImage = [UIImage imageWithData:URLImageData];
     imageView.image = urlImage;
     */
    
    
    //----------------------UIImageView图片视图---------------------
    
    // 1.image 显示的图片数据
    imageView.image = image2;
    
    // 2、backgroundColor 背景颜色
    imageView.backgroundColor = [UIColor redColor];
    
    // 3、默认加载png格式的图片可以省略后缀，其他格式的图片都要写上后缀名
    UIImage *image_jpg = [UIImage imageNamed:@"image02.jpg"];
    imageView.image = image_jpg;
    
    /* 4 contentMode 图片的显示方式
     
     UIViewContentModeScaleToFill, 默认，图片拉伸填充
     UIViewContentModeScaleAspectFit, 按image尺寸等比例显示
     UIViewContentModeScaleAspectFill, 图片超出，截取一部分显示，需要这个 设置，imageView.layer.masksToBounds = YES;
     
     */
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 5、animationImages UIImageView 帧动画，方式一：
    NSMutableArray *imageArray = [[NSMutableArray alloc] initWithCapacity:21];
    for (int i = 1; i<=21; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i];
        UIImage *image = [UIImage imageNamed:imageName];
        [imageArray addObject:image];
    }
    
    // animationImages 一组图片数据，NSArray
    imageView.animationImages = imageArray;
    
    //animationDuration 动画的时间（这个时间内显示数组中的所有图片）
    imageView.animationDuration = 1;
    
    //startAnimating 启动帧动画
    [imageView startAnimating];
    
    // stopAnimating 暂停帧动画
    [imageView stopAnimating];
    
    
    // 6、显示帧动画的方式二：
    UIImage *newImage = [UIImage animatedImageWithImages:imageArray duration:1];
    
    imageView.image = newImage;
    
    
    // 7、userInteractionEnabled 接受用户触摸事件
    imageView.userInteractionEnabled = YES;
}



@end
