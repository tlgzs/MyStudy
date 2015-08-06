//
//  AppDelegate.m
//  UIView2
//
//  Created by VincentFu on 15/8/5.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UIView *_bView;

}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIView *view1 = [[UIView alloc] init ];
    view1.frame = CGRectMake(10, 30, 300, 30);
    view1.backgroundColor = [UIColor redColor];
    [self.window addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init ];
    view2.frame = CGRectMake(10, 5, 100, 20);
    view2.backgroundColor = [UIColor yellowColor];
    [view1 addSubview:view2];
    
    UIView *view3 = [[UIView alloc] init ];
    view3.frame = CGRectMake(100, 5, 100, 20);
    view3.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view3];
    
    //得到父类视图
    UIView *superView = view2.superview;
    superView.backgroundColor = [UIColor blackColor];
    //得到子类视图数组
    NSArray *subViews = view1.subviews;
    NSLog(@"count = %d",subViews.count);
//    for(UIView *view in subViews)
//    {
//        view.backgroundColor = [UIColor redColor];
//    }
    UIView *view = [subViews objectAtIndex:0];
    view.backgroundColor = [UIColor redColor];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.frame = CGRectMake(10, 100, 300, 30);
    blueView.backgroundColor = [UIColor blueColor];
    //自动剪裁子类
    blueView.clipsToBounds =YES;
    [self.window addSubview:blueView];
    
    UIView *greenView = [[UIView alloc] init];
    greenView.frame = CGRectMake(10, 5, 200, 100);
    greenView.backgroundColor = [UIColor greenColor];
    //设置透明度
    greenView.alpha = 0.9;
    [blueView addSubview:greenView];
    
    //自动布局
    UIView *_bView = [[UIView alloc] init];
    _bView.frame = CGRectMake(100, 300, 120, 120);
    _bView.backgroundColor = [UIColor blackColor];
    //允许子类View自动布局
    _bView.autoresizesSubviews = YES;
    [self.window addSubview:_bView];
    
    UIView *topView = [[UIView alloc] init];
    topView.frame = CGRectMake(10, 10, 100, 100);
    topView.backgroundColor = [UIColor orangeColor];
    //设置自动布局方式
    topView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timeTick:) userInfo:nil repeats:YES];
    
    [_bView addSubview:topView];
    
    
    
    
    
    
    
    
   
    return YES;
}

-(void)timeTick:(id)sender
{
    _bView.frame = CGRectMake(_bView.frame.origin.x, _bView.frame.origin.y, _bView.frame.size.width+5, _bView.frame.size.height+5);
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
