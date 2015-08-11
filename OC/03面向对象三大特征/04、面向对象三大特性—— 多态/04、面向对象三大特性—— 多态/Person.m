//
//  Person.m
//  04、面向对象三大特性—— 多态
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)usePrinter:(Printer *)p;
{
    [p print];
}

//- (void)usePrinter:(BWPrinter *)p1
//{
//    [p1 print];
//}
//
//- (void)usePrinter_1:(ColorPrinter *)p2
//{
//    [p2 print];
//}
//
//- (void)usePrinter_2:(My3DPrinter *)p3
//{
//    [p3 print];
//}

@end
