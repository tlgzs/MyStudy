//
//  ViewController.m
//  UINavigationController2
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"第一个";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"push到VC2" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 100, 300, 50)];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
}

-(void)btnClicked:(UIButton *)btn
{
    
    //导航控制器对试图控制器的实例执行入栈操作（将视图控制器的实例加入到导航控制器的栈中）
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    //取到导航控制器的实例
    //导航控制器对视图控制器执行入栈操作的一个方法,参数为视图控制器的实例 animated 动画效果
    [self.navigationController pushViewController:vc2 animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
