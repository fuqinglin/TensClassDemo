//
//  main.m
//  代理设计模式(delegate)
//
//  Created by Kinglin_Fu on 15/7/28.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agency.h"
#import "Agency_1.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        Agency_1 *agency_1 = [[Agency_1 alloc] init];
        Person *per = [[Person alloc] initWith:agency_1];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
