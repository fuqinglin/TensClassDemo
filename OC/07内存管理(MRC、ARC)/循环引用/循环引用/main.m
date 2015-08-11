//
//  main.m
//  循环引用
//
//  Created by Kinglin_Fu on 15/7/29.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *per = [[Person alloc] init];
        Dog *dog = [[Dog alloc] init];
        
        per.dog = dog;
        dog.person = per;
        
    }
    return 0;
}
