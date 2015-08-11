//
//  JobsViewController.h
//  810ZY  导航栏应用
//
//  Created by zxr on 15-8-10.
//  Copyright (c) 2015年 tens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *detailText;

@end
