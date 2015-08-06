//
//  AppDelegate.m
//  UIView
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
    /*
     3GS 320*480
     4.4S 640*960
     5 640*1136
     
     
     */
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(10, 30, 300, 30);
    view1.backgroundColor = [UIColor redColor];
    [self.window addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(10, 30, 300, 30);
    view2.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view2];
    
//    NSLog(@"frame - x = %f",view2.frame.origin.x);
//    NSLog(@"frame - y = %f",view2.frame.origin.y);
//    NSLog(@"frame - w = %f",view2.frame.size.width);
//    NSLog(@"frame - h = %f",view2.frame.size.height );
//    //得到view的中心点
//    CGPoint point = view2.center;
//    NSLog(@"center - x = %f",point.x);
//    NSLog(@"center - y = %f",point.y);
    
    //得到边框大小
    CGRect bounds = view2.bounds;
    NSLog(@"bouns - x = %f",bounds.origin.x);
    NSLog(@"bouns - y = %f",bounds.origin.y);
    NSLog(@"bouns - w = %f",bounds.size.width);
    NSLog(@"bouns - h = %f",bounds.size.height);
    
    //设置视图的标签
    view2.tag = 2 ;
    //设置内容模式
    view2.contentMode = UIViewContentModeBottom;
    
    
    
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
