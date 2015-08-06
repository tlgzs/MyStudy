//
//  AppDelegate.m
//  UIWindow
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.windowLevel = UIWindowLevelAlert;
    
    [self.window makeKeyAndVisible];
    
    UIWindow *window1 = [[UIWindow alloc] init];
    window1.frame = CGRectMake(0, 0, 320, 300);
    window1.backgroundColor = [UIColor blueColor];
    //UIwindow默认为隐藏状态，需要设置
    window1.hidden = NO;
    [self.window addSubview:window1];
    
    UIWindow *window2 = [[UIWindow alloc] init];
    window2.frame = CGRectMake(0, 0, 320, 200);
    window2.backgroundColor = [UIColor redColor];
    window2.hidden = NO;
    window2.windowLevel = UIWindowLevelStatusBar;
    [self.window addSubview:window2];
    
    UIWindow *window3 = [[UIWindow alloc] init];
    window3.frame = CGRectMake(0, 0, 320, 100);
    window3.backgroundColor = [UIColor purpleColor];
    window3.hidden = NO;
    window3.windowLevel = UIWindowLevelAlert;
    [self.window addSubview:window3];
    
    NSLog(@"window1Level %f",window1.windowLevel);
    NSLog(@"window2Level %f",window2.windowLevel);
    NSLog(@"window3Level %f",window3.windowLevel);
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
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
