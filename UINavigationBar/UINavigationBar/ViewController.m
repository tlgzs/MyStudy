//
//  ViewController.m
//  UINavigationBar
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
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"到2" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 80, 300, 50)];
    btn.backgroundColor =[UIColor orangeColor];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    //设置导航条的样式
    /*
     UIBarStyleDefault - 默认样式 白色半透明
     UIBarStyleBlack - 黑色半透明样式
     UIBarStyleBlackOpaque - 黑色全透明
     UIBarStyleBlackTranslucent - 黑色半透明样式
     */
    //导航条默认高度44，宽度320
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    //设置导航条背景图片
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"111.jpg"] forBarMetrics:UIBarMetricsDefault];
    //自动裁剪图片
//    self.navigationController.navigationBar.clipsToBounds = YES;
    //隐藏导航栏
    self.navigationController.navigationBarHidden = YES;
    
    
    
}

-(void)btnClick:(UIButton *)btn
{
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
