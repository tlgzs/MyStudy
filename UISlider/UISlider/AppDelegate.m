//
//  AppDelegate.m
//  UISlider
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
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UISlider *slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(10, 100, 300, 100);
//    slider.backgroundColor = [UIColor redColor];
    //设置当前值
    slider.value = 0.5;
    [slider addTarget:self action:@selector(sliderChange:) forControlEvents:UIControlEventValueChanged];
    
    //设置最小值
    slider.minimumValue = 100;
    //设置最大值
    slider.maximumValue = 101;
    
    //设置最小值一侧的图片
    slider.minimumValueImage = [UIImage imageNamed:@"1.png"];
    
    //设置最大值一侧的图片
    slider.maximumValueImage = [UIImage imageNamed:@"2.png"];
    
    //设置最小值轨道颜色
    slider.minimumTrackTintColor = [UIColor redColor];
    
    //设置最大值轨道颜色
    slider.maximumTrackTintColor = [UIColor blackColor];
    
    //设置滑块颜色
    slider.thumbTintColor = [UIColor orangeColor];
    
    //设置值
    [slider setValue:100.5 animated:YES];
    
    //设置滑块图片
//    [slider setThumbImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
//    
//    //设置最小值轨道图片
//    [slider setMinimumTrackImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
//    
//    //设置最大值轨道图片
//    [slider setMaximumTrackImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
    
    
    
    
    [self.window addSubview:slider];
    
    
    
    return YES;
}

-(void)sliderChange:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    NSLog(@"value = %f",slider.value);
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
