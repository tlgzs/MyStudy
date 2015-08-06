//
//  ViewController.m
//  UINavigationItem
//
//  Created by VincentFu on 15/8/7.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:@"进入第二个" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(10, 100, 300, 50)];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.navigationItem.title = @"root";
//    [self.navigationItem setTitle:@"root"]; //两种方法设置
    
    //设置的frame的x,y值不会起作用，视图会自动居中显示在导航条上
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(100, 50, 100, 40)];
    [titleView setBackgroundColor:[UIColor yellowColor]];
    //设置标题视图
    [self.navigationItem setTitleView:titleView];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //设置导航栏上的左右按钮
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"左侧按钮" style:UIBarButtonItemStylePlain target:self action:@selector(itemClick:)];
    item1.tag = 1;
    self.navigationItem.leftBarButtonItem = item1;
    
//    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:self action:@selector(itemClick:)];
//    item2.tag = 2;
//    self.navigationItem.rightBarButtonItem = item2;
    
    //接收一个数组，数组中的元素是UIBarButtonItem实例
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(itemClick:)];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setFrame:CGRectMake(0, 0, 30, 30)];
    
    //初始化，接收一个视图控的实例
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithCustomView:btn1];
    

    NSArray *itemArray = [NSArray arrayWithObjects:item2,item3, nil];

    self.navigationItem.rightBarButtonItem = itemArray;
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)itemClick:(UIBarButtonItem *)item
{
//    UIBarButtonItem *btn =(UIBarButtonItem *)item;
//    if (btn.tag == 1) {
        [self.view setBackgroundColor:[UIColor blueColor]];
//        NSLog(@"左侧按钮");
//    }else if(btn.tag == 2)
//        NSLog(@"右侧按钮");
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
