//
//  AppDelegate.m
//  03UIWindow的创建
//
//  Created by Kinglin_Fu on 15/8/1.
//  Copyright (c) 2015年 tens十安科技. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
{
    UIWindow *window_1;
    UIWindow *window_2;

}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //获取屏幕的尺寸
    CGRect bounds = [UIScreen mainScreen].bounds;
    // 创建一个UIWindow，尺寸和屏幕尺寸一样。Frame：视图的坐标位置和尺寸
    self.window = [[UIWindow alloc] initWithFrame:bounds];
    self.window.backgroundColor = [UIColor blueColor];
    
    // makeKeyAndVisible 设置window为主window并且显示。
    [self.window makeKeyAndVisible];
    
    // 创建一个lable并且添加到window上显示
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 20)];
//    label.text = @"132456789007tfy";
//    label.textColor = [UIColor redColor];
//    [self.window addSubview:label];
    
    
    window_1 = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    window_1.backgroundColor = [UIColor yellowColor];

    // 设置window为非隐藏状态，默认是隐藏的
    window_1.hidden = NO;
    window_1.windowLevel = UIWindowLevelAlert;
    
    
    window_2 = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 320, 300)];
    window_2.backgroundColor = [UIColor greenColor];
    window_2.hidden = NO;
    window_2.windowLevel = UIWindowLevelAlert;
    window_2.windowLevel = UIWindowLevelNormal;
    window_2.windowLevel = UIWindowLevelStatusBar;
    
    
    // window级别：UIWindowLevelNormal --> UIWindowLevelStatusBar --> UIWindowLevelAlert
    NSLog(@"Normal:%f",UIWindowLevelNormal); // Normal:0.000000
    NSLog(@"StatusBar:%f",UIWindowLevelStatusBar); // StatusBar:1000.000000
    NSLog(@"LevelAlert:%f",UIWindowLevelAlert); // LevelAlert:2000.000000
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
