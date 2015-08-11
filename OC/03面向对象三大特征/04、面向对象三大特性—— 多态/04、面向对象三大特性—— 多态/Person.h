//
//  Person.h
//  04、面向对象三大特性—— 多态
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BWPrinter.h"
//#import "ColorPrinter.h"
//#import "My3DPrinter.h"
#import "Printer.h"

@interface Person : NSObject
{
//    BWPrinter *_p1;
//    ColorPrinter *_p2;
//    My3DPrinter *_p3;
    
    Printer *p;
}

- (void)usePrinter:(Printer *)p;

//- (void)usePrinter:(BWPrinter *)p1;
//- (void)usePrinter_1:(ColorPrinter *)p2;
//- (void)usePrinter_2:(My3DPrinter *)p3;


@end
