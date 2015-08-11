//
//  main.m
//  NSString_Demo
//
//  Created by Kinglin_Fu on 15/7/24.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*======================NSString(不可变字符串)常用方法========================*/
        
        // 1、————————————————————————————字符串的创建———————————————————————————
        // 方式一：实例方法创建
        NSString *s1 = [[NSString alloc] initWithFormat:@"abc:%d,%@",100,@"efg"];
        NSLog(@"s1 = %@",s1);
        
        // 方式二：类方法创建
        NSString *s2 = [NSString stringWithFormat:@"%c,%f",'c',435.4];
        NSLog(@"s2 = %@",s2);
        
        // 方式三：快速创建
        NSString *s3 = @"asdfghjk";
        NSLog(@"s3 = %@",s3);
        
        
        // 2、————————————————————————————字符串的比较———————————————————————————
        /*
         1、== 和 isEqualToString的比较
         2、compare:大小的比较
         3、length: 长度的比较
         */
        
        NSString *s4 = @"abc";
        NSString *s5 = @"abc";
        NSString *s6 = [[NSString alloc] initWithFormat:@"abc"];
        // 1、== 比较两个字符串的地址是否相同
        if (s4 == s5) {
            NSLog(@"相同！");
        }
        
        if (s4 == s6) {
            NSLog(@"相同！");
        }
        
        
        // 2、isEqualToString :比较两个字符串是否内容相同
        if([s4 isEqualToString:s6]) {
            
            NSLog(@"s4 与 s6相同！");
        }
        
        
        //3、compare：比较升序还是降序，比较的是每个字符的ASCII码值，从第一个字符依次比较
        NSString *s7 = @"A2345";
        NSString *s8 = @"A789";
        
        // NSComparisonResult 枚举类型：NSOrderedAscending，NSOrderedSame，NSOrderedDescending
        NSComparisonResult result = [s7 compare:s8];
        if (result == NSOrderedAscending) {
            NSLog(@"升序！");
        } else if(result == NSOrderedSame) {
            NSLog(@"相同！");
        } else if(result == NSOrderedDescending) {
            NSLog(@"降序！");
        }
        
        // 4、length ：计算字符串的长度
        NSString *s9 = @"问问群";
        NSString *s10 = @"额鹅鹅鹅";
        NSUInteger len_s9 = [s9 length];
        NSUInteger len_s10 = [s10 length];
        NSLog(@"len_s9 = %ld,len_s10 = %ld",len_s9, len_s10);
        
        
        // 3、————————————————————————————字符串的转化 ————————————————————————————
        /*
         1、大小写的转换
         2、与基本数据类型的转换
         */
        
        //1、大小写的转换
        NSString *s11 = @"Hello";
        NSString *s12 = @"hello world!";
        //uppercaseString： 全部转为大写
        NSString *s11_ = [s11 uppercaseString];
        NSLog(@"s11_ = %@",s11_);
        
        //lowercaseString :全部转为小写
        NSString *s11_2 = [s11 lowercaseString];
        NSLog(@"s11_2:%@",s11_2);
        
        //capitalizedString： 首字母大写
        NSString *s12_ = [s12 capitalizedString];
        NSLog(@"s12_ :%@",s12_);
        
        
        // 2、与基本数据类型的转换,字符串必须是纯数字类型的
        NSString *s13 = @"1314235";
        int v1 = [s13 intValue];
        int v2 = s13.intValue; // 可以使用点语法调用
        [s13 floatValue];
        [s13 doubleValue];
        [s13 integerValue];
        [s13 longLongValue];
        [s13 boolValue];
        NSLog(@"v1 = %d",v1);
        
        
        // 4、————————————————————————————字符串的拼接——————————————————————————————
        
        NSString *s14 = @"abcd";
        NSString *s15 = @"efgh";
        // 方式一：
        NSString *s14_ = [[NSString alloc] initWithFormat:@"%@%@",s14,s15];
        NSLog(@"s14_ = %@",s14_);
        
        // 方式二：stringByAppendingString
        NSString *_s14 = [s14 stringByAppendingString:s15];
        NSLog(@"_s14:%@",_s14);
        
        // 方式三：stringByAppendingFormat
        NSString *_s15 = [s14 stringByAppendingFormat:@"%@%d",s15,1000];
        NSLog(@"_s15:%@",_s15);
        
        
        // 5、————————————————————————————字符串的查找替换———————————————————————————
        
        // 1、查找
        NSString *s16 = @"46747587@qq.com";
        NSRange range = [s16 rangeOfString:@"@qq.com"];
        NSLog(@"range:%ld,%ld",range.location,range.length);
       //  NSNotFound:表示没有找到
        if (range.location == NSNotFound) {
            NSLog(@"没有找到！");
        } else {
            NSLog(@"找到！");
        }
        
        // 2、查找替换:stringByReplacingOccurrencesOfString
        NSString *s16_ = [s16 stringByReplacingOccurrencesOfString:@"qq.com" withString:@"163.com"];
        NSLog(@"s16:_%@",s16_);
        
        // 3、指定替换一个范围的字符串
        NSRange rang_ = {0,7};
        NSString *_s16 = [s16 stringByReplacingCharactersInRange:rang_ withString:@"1234567"];
        NSLog(@"_s16:%@",_s16);
        
        // 6、————————————————————————————字符串的截取———————————————————————————
        
        NSString *s17 = @"ABCDEFG";
        //substringFromIndex :从指定位置开始截取到结尾
        NSLog(@"%@",[s17 substringFromIndex:2]);
        //substringToIndex: 从开头截取到指定位置
        NSLog(@"%@",[s17 substringToIndex:2]);
        
        NSRange r = {1,5};
        //substringWithRange: 截取指定范围的字符串
        NSLog(@"%@",[s17 substringWithRange:r]);
        
        
        /*=============NSMutableString(可变字符串)常用方法================*/
        
        // 1、————————————————————————————可变字符串的创建———————————————————————————
        
        // 方式一：创建并指定字符串长度,长度超过会自动开辟空间
        //NSMutableString *ms1 = [[NSMutableString alloc] initWithCapacity:10];
        
        // 不指定长度，动态改变
        NSMutableString *ms1 = [[NSMutableString alloc] init];
        
        //ms1 = @"12341234231"; 错误的：可变字符串不能这个赋值
        
        // 方式二：
        NSMutableString *ms2 = [[NSMutableString alloc] initWithFormat:@"%d",1000];
        NSLog(@"ms2 = %@",ms2);

        
        // 方式三：类方法创建
        NSMutableString *ms3 = [NSMutableString stringWithFormat:@"%f",43.3];
        NSLog(@"ms3 = %@",ms3);

        
        // 2、———————————————————可变字符串的插入、删除、追加、替换———————————————————————————
        
        //1、insertString:insertString: 在指定的位置插入字符串
        [ms1 insertString:@"abcd" atIndex:0];
        NSLog(@"ms1 = %@",ms1);
        
        // 2、字符串的拼接
        [ms1 appendString:@"efgh"];
        NSLog(@"ms1 = %@",ms1);
        
        [ms1 appendFormat:@"%d",2000];
        NSLog(@"ms1 = %@",ms1);
        
        //3、deleteCharactersInRange：删除指定范围的字符串
        NSRange r1 = {0,4};
        [ms1 deleteCharactersInRange:r1];
        NSLog(@"ms1 = %@",ms1);
        
        // 4、setString：设置新的字符串
        [ms1 setString:@"123456789"];
        NSLog(@"ms1 = %@",ms1);
        
    
    }
    return 0;
}
