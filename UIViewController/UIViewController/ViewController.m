//
//  ViewController.m
//  UIViewController
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    NSLog(@"x =  %f",self.view.frame.origin.x);
    NSLog(@"y =  %f",self.view.frame.origin.y);
    NSLog(@"w =  %f",self.view.frame.size.width);
    NSLog(@"h =  %f",self.view.frame.size.height);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(10, 20, 300, 30);
    [btn setTitle:@"模式对话窗体跳转" forState:UIControlStateNormal];
    [btn setTitle:@"点击了按钮" forState:UIControlStateHighlighted];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setBorderColor:[UIColor blackColor].CGColor]; //设置边线颜色
    [btn.layer setCornerRadius:8.0];//设置圆角半径
    [btn.layer setBorderWidth:1]; //设置边线宽度
    
    
}

-(void)btnClick
{
    NSLog(@"点击了按钮");
    SubViewController *svc = [[SubViewController alloc] init];
    [self presentViewController:svc animated:YES completion:^{}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
