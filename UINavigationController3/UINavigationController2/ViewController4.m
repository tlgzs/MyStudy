//
//  ViewController4.m
//  UINavigationController2
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController4.h"
#import "ViewController2.h"


@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"第四个";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"push到root" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 100, 300, 50)];
    btn.tag = 100;
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"pop到vc2" forState:UIControlStateNormal];
    [btn1 setFrame:CGRectMake(10, 200, 300, 50)];
    btn1.tag = 200;
    btn1.backgroundColor = [UIColor blackColor];
    [btn1 addTarget:self action:@selector(btn1Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}

-(void)btn1Clicked:(UIButton *)btn
{
    //跳转到指定的视图控制器
    /*
     1.viewControllers能拿到所有试图控制器的实例
     2.viewControllers视图控制器在数组中的顺序即为试图控制器在导航控制器栈中的顺序
     3.传递进去的试图控制器的实例必须是存在于试图控制器栈中
     */
    NSArray *array = self.navigationController.viewControllers;
    

    
    [self.navigationController popToViewController:[array objectAtIndex:1] animated:YES];
    
    
}

-(void)btnClicked:(UIButton *)btn
{
        //直接返回到根视图控制器
        [self.navigationController popToRootViewControllerAnimated:YES];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
