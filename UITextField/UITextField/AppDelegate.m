//
//  AppDelegate.m
//  UITextField
//
//  Created by VincentFu on 15/8/5.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UITextField *_textField1;
    UIButton *_btn;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor orangeColor];
    [self.window makeKeyAndVisible];
    
    UITextField *textField = [[UITextField alloc] init];
    textField.frame = CGRectMake(10, 30, 300, 30);
    //设置边框样式
    /*
     UITextBorderStyleRoundedRect -圆角边框，背景白色
     UITextBorderStyleBezel - 方角边框，背景透明,边框线为灰色
     UITextBorderStyleLine - 方角边框 背景透明，边框线为黑色
     UITextBorderStyleNone -(默认)无边框，背景透明
     */
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置背景颜色
//    textField.backgroundColor = [UIColor blueColor];
    //设置提示文字
    textField.placeholder = @"请输入密码";
    //设置密文输入
//    textField.secureTextEntry = YES;
    //设置键盘样式
//    textField.keyboardType = UIKeyboardTypeNumberPad;
    //设置键盘风格
    textField.keyboardAppearance = UIKeyboardAppearanceAlert;
    //设置弹出视图
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
//    imageView.frame = CGRectMake(0, 100, 320, 100);
//    textField.inputView = imageView;
    
    //设置左视图(只有宽度有作用)
    UIView *leftView = [[UIView alloc] init];
    leftView.backgroundColor = [UIColor blueColor];
    leftView.frame = CGRectMake(0, 0, 100, 100);
    textField.leftView = leftView;
    //设置左视图模式
    textField.leftViewMode = UITextFieldViewModeAlways;
    
//    //设置右视图
//    UIView *rightView = [[UIView alloc] init];
//    rightView.backgroundColor = [UIColor redColor];
//    rightView.frame = CGRectMake(0, 0, 100, 100);
//    textField.rightView = rightView;
//    //设置右视图模式
//    textField.rightViewMode = UITextFieldViewModeAlways;
    //设置清除按钮模式
    textField.clearButtonMode = UITextFieldViewModeAlways;
    
    _textField1 = [[UITextField alloc] init];
    _textField1.frame = CGRectMake(10, 100, 300, 100);
    _textField1.borderStyle = UITextBorderStyleRoundedRect;
    //再次编辑的时候，是否清空内容
    _textField1.clearsOnBeginEditing = YES;
    //内容纵向对齐方式
    _textField1.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    //内容横向对齐
    _textField1.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter;
    
    //文字内容对齐方式
    _textField1.textAlignment = NSTextAlignmentCenter;
    //设置textField滚动
    _textField1.adjustsFontSizeToFitWidth = YES;
    //设置最小字号（跟textfield滚动相关）
    _textField1.minimumFontSize = 50;
    //设置首字母是否大写
    _textField1.autocapitalizationType = UITextAutocapitalizationTypeSentences;
    //设置return键样式
    _textField1.returnKeyType = UIReturnKeyGo;
    
    //设置代理
    _textField1.delegate = self;
    
    _textField1.clearButtonMode = UITextFieldViewModeUnlessEditing;
    
    
    UIControl *control = [[UIControl alloc] init];
    control.frame = CGRectMake(0, 0, 320, 480);
    [control addTarget:self action:@selector(controlClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:control];
    
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake(10, 400, 300, 30);
    _btn.backgroundColor = [UIColor blackColor];
    [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btn setTitle:@"登录" forState:UIControlStateNormal];
    [self.window addSubview:_btn];
    //键盘弹出和收起的通知
    //键盘升起的系统通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow) name:UIKeyboardWillShowNotification object:nil];
    //键盘收起的系统通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification object:nil];
    
    
    
    [self.window addSubview:_textField1];
    [self.window addSubview:textField];
    
    
    return YES;
}
-(void)keyboardWillShow
{
    [UIView animateWithDuration:0.25 animations:^{
        _btn.frame = CGRectMake(10, 200, 300, 30);
    }
                     completion:^(BOOL finished){
                     }];
}

-(void)keyboardWillHide
{
    [UIView animateWithDuration:0.25 animations:^{
        _btn.frame = CGRectMake(10, 400, 300, 30);
    }
                     completion:^(BOOL finished){
                     }];
}

-(void)btnClick:(id)sender
{
    
}

-(void)controlClick:(id)sender
{
    [_textField1 resignFirstResponder];
}

//是否可以进入编辑模式
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}
//进入编辑模式时调用
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"进入编辑模式");
}
//是否可以退出编辑模式
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}
//退出编辑模式时调用
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"退出编辑模式");
}
//是否可以点击清除按钮
-(BOOL)textFieldShouldClear:(UITextField *)textField
{
    textField.text = @"";//手动清空
    return NO;
}

//是否可以点击return按钮
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
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
