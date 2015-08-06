//
//  ViewController2.m
//  UINavigationController2
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"push到VC3" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 100, 300, 50)];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *popBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [popBtn setTitle:@"popVc2" forState:UIControlStateNormal];
    [popBtn setFrame:CGRectMake(10, 200, 300, 50)];
    [popBtn addTarget:self action:@selector(popBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    popBtn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:popBtn];
}

-(void)popBtnClicked:(UIButton *)popBtn
{
    //导航控制对vc2执行出栈操作
    //将导航控制器中处于栈顶的对象移出
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)btnClicked:(UIButton *)btn
{
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    [self.navigationController pushViewController:vc3 animated:YES];
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
