//
//  ViewController3.m
//  UINavigationController2
//
//  Created by VincentFu on 15/8/6.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"第三个";
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"push到VC4" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 100, 300, 50)];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
}

-(void)btnClicked:(UIButton *)btn
{
    ViewController4 *vc4 = [[ViewController4 alloc] init];
    [self.navigationController pushViewController:vc4 animated:YES];
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
