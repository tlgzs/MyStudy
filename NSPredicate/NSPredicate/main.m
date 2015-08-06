//
//  main.m
//  NSPredicate
//
//  Created by VincentFu on 15/8/1.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSArray *persons = [NSArray arrayWithObjects:
                            [Person personWithName:@"aaa" andAge:18],
                            [Person personWithName:@"bbb" andAge:20],
                            [Person personWithName:@"ccc" andAge:21],
                            [Person personWithName:@"ddd" andAge:22],
                            [Person personWithName:@"eee" andAge:23],
                            [Person personWithName:@"fff" andAge:24],
                            [Person personWithName:@"ggg" andAge:25],
                            [Person personWithName:@"hhh" andAge:26],
                            [Person personWithName:@"iii" andAge:27],
                            [Person personWithName:@"jjj" andAge:28],
                            [Person personWithName:@"kkk" andAge:29],
                            [Person personWithName:@"lll" andAge:30],
                            nil];
        
//        //1.年龄小于或者等于25岁
//        //定义谓词对象，谓词对象中包含了过滤条件
//        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.age<=%d",25];
//        //使用谓词条件过滤数组中的元素，过滤之后返回查询的结果
//        NSArray *newPersons = [persons filteredArrayUsingPredicate:predicate];
//        NSLog(@"%@",newPersons);
//        //2.使用&&符号
//        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name='aaa' && age<=18"];
//        NSArray *newPersons = [persons filteredArrayUsingPredicate:predicate];
//        NSLog(@"%@",newPersons);
        //3.IN（包含）
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name IN {'aaa,'bbb'} || self.age  IN {18,20}"];
        NSArray *newPersons = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",newPersons);
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
