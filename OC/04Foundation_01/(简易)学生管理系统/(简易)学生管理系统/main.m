//
//  main.m
//  (简易)学生管理系统
//
//  Created by Kinglin_Fu on 15/7/27.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        StudentManager *stuMana = [[StudentManager alloc] init];
        
        [stuMana addStudent];
        
        [stuMana updateStudent];
        
        [stuMana bestScoreStudent];
        
        [stuMana classAverage];
        
    }
    return 0;
}
