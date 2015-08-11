//
//  main.m
//  04、类之间的关系——关联关系
//
//  Created by Kinglin_Fu on 15/7/22.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc] initWithName:@"小强" withAge:20];
        
        Book *book = [[Book alloc] initWithBookName:@"《浪潮之巅》" withAuthor:@"吴军"];
        book.price = 40.0;
        per.book = book;
        
        [per readBook];

    }
    return 0;
}
