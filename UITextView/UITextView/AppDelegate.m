//
//  AppDelegate.m
//  UITextView
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UITextView *_textView;
    UITextField *_textField;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor orangeColor];
    
    _textView = [[UITextView alloc] init];
    _textView.frame = CGRectMake(10, 30, 300, 100);
    _textView.text = @"脉圈网络脉圈网络脉圈网络脉圈网络脉圈网络";
    _textView.font = [UIFont boldSystemFontOfSize:30];
    //设置是否可编辑
//    _textView.editable = YES;
    _textView.delegate = self;
    
    [self.window addSubview:_textView];
    
    _textField = [[UITextField alloc] init];
    _textField.frame = CGRectMake(10, 150, 300, 30);
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.window addSubview:_textField];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(220, 150, 100, 30);
    [btn setTitle:@"发送" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView{
    NSLog(@"DidChange");
}

- (void)textViewDidChangeSelection:(UITextView *)textView{
    NSLog(@"DidChangeSelection");
}

-(void)btnClick
{
    _textView.text = [_textView.text stringByAppendingFormat:@"\n%@",_textField.text];
    //设置处理滚动
    NSUInteger length = _textView.text.length;
    _textView.selectedRange = NSMakeRange(length, 0);

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
