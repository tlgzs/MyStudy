//
//  main.m
//  NSArryDemo
//
//  Created by VincentFu on 15/7/22.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Worker.h"


int main(int argc, const char * argv[]) {
    
    Worker *w1 = [[Worker alloc] init];
    w1.name = @"zhang3";
    w1.age = 18;
    w1.money = 5500;
    
    Worker *w2 = [[Worker alloc] init];
    w2.name = @"li4";
    w2.age = 25;
    w2.money = 8000;
    
    Worker *w3 = [[Worker alloc] init];
    w3.name = @"wang5";
    w3.age = 22;
    w3.money = 7000;
    
    NSMutableArray *workers = [NSMutableArray arrayWithObjects:w1,w2,w3, nil];
    
    Worker *w4 = [[Worker alloc] init];
    w4.name = @"zhao6";
    w4.age = 24;
    w4.money = 3300;

    NSUInteger index = [workers indexOfObject:w2];
    [workers insertObject:w4 atIndex:index];
    
    NSLog(@"%@",workers);
    
    
    return 0;
}
