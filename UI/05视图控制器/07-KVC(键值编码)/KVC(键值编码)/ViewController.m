//
//  ViewController.m
//  KVC(键值编码)
//
//  Created by qinglinfu on 15/8/8.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *per = [[Person alloc] init];
//    per.name = @"rewrew";
//    per.sex = @"女";
    
    /*KVC赋值、取值：
     1、如果有set\get方法，优先调用set\get方法取值赋值
     2、没有set\get方法，就通过属性的名称直接赋值
     3、不管属性是私有还是公有都可以赋值、取值
     */
    
    // 通过KVC给属性赋值setValue:forKey:
    [per setValue:@"张三" forKey:@"name"];
    [per setValue:@"男" forKey:@"sex"];
    
    //通过KVC获取属性的值：valueForKey
    NSString *name = [per valueForKey:@"name"];
    
    
    Book *book = [[Book alloc] init];
    [per setValue:book forKey:@"book"];
    
    // setValue:forKeyPath: 通过键路径赋值
    [per setValue:@"UIKIT" forKeyPath:@"book.bookName"];
    // valueForKeyPath：通过键路径取值
    NSString *bookName = [per valueForKeyPath:@"book.bookName"];
    
    NSLog(@"name :%@",name);
    NSLog(@"bookName:%@",bookName);
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
