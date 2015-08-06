//
//  AppDelegate.m
//  UIImageView
//
//  Created by VincentFu on 15/8/5.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UIImageView *_imageView1;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    /*
     
     */
    //创建一个window
    self.window =[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIImage *image1 = [UIImage imageNamed:@"222.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    imageView.frame = CGRectMake(10, 30, 300, 100);
//    imageView.frame = CGRectMake(10, 30, image1.size.width, image1.size.height); 得到原图大小
    //设置背景色
    imageView.backgroundColor = [UIColor greenColor];
    //设置内容模式
    /*
     UIViewContentModeScaleToFill - 将图片拉伸比例可能会改变。充满整个ImageView
     UIViewContentModeScaleAspectFill - 图片被拉伸，但是比例不变，小的一边充满ImageView大的一边可能会超出ImageView的frame
     UIViewContentModeScaleAspectFit - 图片被拉伸 比例不变，大的一边充满ImageView，小的一边不会超出ImageView的frame
     */
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.window addSubview:imageView];
    
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    int i;
    for(i=1;i<=19;i++)
    {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        [images addObject:image];
        
    }
    
    _imageView1 = [[UIImageView alloc] init];
    _imageView1.frame = CGRectMake(10, 150, 300, 100);

    //设置动画数组（要播放的图片的数组）
    _imageView1.animationImages = images;
    //设置动画周期时间
    _imageView1.animationDuration = 1.5;
    //设置动画播放次数(如果不设置或者设置为0的话，为无限播放)
    _imageView1.animationRepeatCount =0;
    _imageView1.backgroundColor = [UIColor greenColor];
    [self.window addSubview:_imageView1];
    _imageView1.contentMode = UIViewContentModeScaleAspectFit;
    //开始播放动画
//    [_imageView1 startAnimating];
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.frame = CGRectMake(10, 260, 100, 30);
    [startButton setTitle:@"开始播放动画" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    startButton.tag = 1;
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    stopButton.frame = CGRectMake(10, 290, 100, 30);
    [stopButton setTitle:@"停止播放动画" forState:UIControlStateNormal];
    [stopButton addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    stopButton.tag = 2;
    
    UIButton *reportButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    reportButton.frame = CGRectMake(10, 320, 100, 30);
    [reportButton setTitle:@"报告状态" forState:UIControlStateNormal];
    [reportButton addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    reportButton.tag = 3;
    [self.window addSubview:startButton];
    [self.window addSubview:stopButton];
    [self.window addSubview:reportButton];
    
    
    
    return YES;
}

-(void)ButtonClick:(id)sender
{
    
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 1) {
        //开始动画
        [_imageView1 startAnimating];
    }else if (btn.tag == 2){
        //停止动画
    [_imageView1 stopAnimating];
    }else if(btn.tag ==3){
        //判断是否在动画中
        if ([_imageView1 isAnimating]) {
            NSLog(@"正在动画中");
        }else{
            NSLog(@"动画停止中");
        }
        
    }
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
