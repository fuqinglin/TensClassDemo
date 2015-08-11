//
//  AppDelegate.m
//  01APP生命周期
//
//  Created by Kinglin_Fu on 15/8/1.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 应用启动后加载
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"didFinishLaunching");
    return YES;
}

// 将要进入非活跃状态
- (void)applicationWillResignActive:(UIApplication *)application {
   
    NSLog(@"WillResignActive");
}

// 程序进入后台，程序不再运行
- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    NSLog(@"DidEnterBackground");
}


// 程序进入前台(运行状态)
- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"WillEnterForeground");
}


// 程序进入活跃状态(正在运行状态)
- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    NSLog(@"DidBecomeActive");
}

// 程序退出(结束)调用
- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"WillTerminate");
}

@end
