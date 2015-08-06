//
//  AppDelegate.m
//  UIButton
//
//  Created by VincentFu on 15/8/4.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"
#import "MyClass.h"
#import "MyButton.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
     UIButton的类型
     UIButtonTypeRoundedRect - 按钮
     UIButtonTypeDetailDisclosure -详情
     UIButtonTypeContactAdd -加号按钮
     UIButtonTypeInfoDark -白色信息按钮
     UIButtonTypeInfoLight -灰色信息按钮
     UIButtonTypeCustom -自定义按钮
     */
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(10, 30, 300, 30);
    [self.window addSubview:button1];
    
    //设置按钮边框线
    [button1.layer setMasksToBounds:YES];
    [button1.layer setBorderColor:[UIColor blackColor].CGColor]; //设置边线颜色
    [button1.layer setCornerRadius:8.0];//设置圆角半径
    [button1.layer setBorderWidth:1]; //设置边线宽度
    
    
    //设置按钮的标题文字
    [button1 setTitle:@"按钮标题" forState:UIControlStateNormal];
    [button1 setTitle:@"按钮标题被点击" forState:UIControlStateHighlighted];
    //设置标题文字的颜色
    /*
     UIControlStateNormal 使用默认状态下改颜色，高亮状态的颜色也会一起改变
     但是只设置高亮状态的话，默认状态的颜色不会改变
     */
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //设置点击事件
    /*
     Target - 执行某一个对象中的方法
     action - 要执行的方法名
     ControlEvents -出发事件的形式
     */
    [button1 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //设置高亮状态下按钮是否发光
//    button1.showsTouchWhenHighlighted =YES;
    
    //UIButtonTypeContactAdd -加号按钮
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button2.frame = CGRectMake(10, 100, 300, 30);
    [button2 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //设置标签属性
    button1.tag =1;
    button2.tag =2;
    [self.window addSubview:button2];
    
    
    //自定义按钮(重写UIButton只能用自定义)
    MyButton *button3 = [MyButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(10, 200, 300, 100);
    button3.backgroundColor = [UIColor redColor];
    //加边框
    [button3.layer setMasksToBounds:YES];
    [button3.layer setBorderColor:[UIColor blackColor].CGColor]; //设置边线颜色
    [button3.layer setCornerRadius:8.0];//设置圆角半径
    [button3.layer setBorderWidth:1]; //设置边线宽度 
    //点击事件
    [button3 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    //设置tag
    button3.tag =3;
    
    //设置高亮状态下按钮变暗(没有图片状态是无效的)
    button3.adjustsImageWhenHighlighted = YES;
    //设置背景图片（图片会被拉伸充满整个button）
    [button3 setBackgroundImage:[UIImage imageNamed:@"9358d109b3de9c82a70bfca66d81800a19d843a8.jpg"]forState:UIControlStateNormal];
    //设置按钮上的图片(图片不会被拉伸)
    [button3 setImage:[UIImage imageNamed:@"20110719162605-1091252364.jpg"] forState:UIControlStateNormal];
    //设置标题文字
    [button3 setTitle:@"自定义按钮" forState:UIControlStateNormal];
    
    
    
    
    
    [self.window addSubview:button3];
    
    
    
    return YES;
}

-(void)buttonClick:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag ==1)
        NSLog(@"圆角按钮被点击！");
    else if(btn.tag ==2)
    NSLog(@"加号按钮被点击！");
    else
        NSLog(@"自定义按钮被点击！");
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
