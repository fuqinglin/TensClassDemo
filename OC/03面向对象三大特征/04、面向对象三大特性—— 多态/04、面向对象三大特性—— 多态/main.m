//
//  main.m
//  04、面向对象三大特性—— 多态
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "BWPrinter.h"
#import "ColorPrinter.h"
#import "My3DPrinter.h"
#include "Test.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Printer *p1 = [[Printer alloc] init];
        [p1 print];
        
        Printer *p2 = [[BWPrinter alloc] init];
        [p2 print];
        
        Printer *p3 = [[ColorPrinter alloc] init];
        [p3 print];
        
        Printer *p4 = [[My3DPrinter alloc] init];
        [p4 print];
       
        /*
            多态的三个条件：
            1、必须有继承
            2、必须有方法的覆写
            3、父类创建的指针变量指向子类对象
         */
        
//        Test *t = [[BWPrinter alloc] init];
//        [t print];
        
        Person *per = [[Person alloc] init];
        [per usePrinter:p4];
        
        

    }
    return 0;
}
