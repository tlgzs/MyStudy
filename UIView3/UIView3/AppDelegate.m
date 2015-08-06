//
//  AppDelegate.m
//  UIView3
//
//  Created by VincentFu on 15/8/5.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIView *redView = [[UIView alloc] init];
    redView.frame = CGRectMake(10, 30, 300, 100);
    redView.backgroundColor =[UIColor redColor];
    [self.window addSubview:redView];
    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.frame = CGRectMake(10, 50, 100, 100);
    yellowView.backgroundColor =[UIColor yellowColor];
    [self.window addSubview:yellowView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.frame = CGRectMake(50, 40, 200, 300);
    blueView.backgroundColor =[UIColor blueColor];
    [self.window addSubview:blueView];
    
    //将某一个view放到最下层
    [self.window sendSubviewToBack:blueView];
    
    //将某一个view放到最上层
    [self.window bringSubviewToFront:redView];
    // 红->黄->蓝
    
    UIView *greenView = [[UIView alloc] init];
    greenView.frame = CGRectMake(0, 0, 300, 200);
    greenView.backgroundColor = [UIColor greenColor];
    //插入指定view到指定层
//    [self.window insertSubview:greenView atIndex:1];
    //插入一个view到指定view的下层
//    [self.window insertSubview:greenView belowSubview:redView];
    //插入一个view到指定view的上层
    [self.window insertSubview:greenView aboveSubview:blueView];
    
    //交换两个层的view
    [self.window exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    //在没有做层操作前数组应为0:red 1:yellow 2:blue 3:green
    NSArray *subViews = self.window.subviews;
    UIView *view = [subViews objectAtIndex:1];
    view.backgroundColor = [UIColor blackColor];
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
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
