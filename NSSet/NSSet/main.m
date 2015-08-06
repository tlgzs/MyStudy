//
//  main.m
//  NSSet
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//
/*
 集合对象
 集合的基本概念
 在Founddation框架中，提供了NSSet类，它是一组单值对象的集合，且NSSet实例中元素是**无序**，同一个对象只能保存一次，
 并且它也分为可变和不可变的集合对象（可变集合对象，NSMutableSet）
 功能类似于数组
 
 集合对象用的不多，大部分时候还是用数组
 */
//    //NSSet的初始化
//    NSSet *set1 = [[NSSet alloc] initWithObjects:@"one",@"two", nil];
//
//    //通过数组的构建集合
//    NSArray *array = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
//    NSSet *set2 = [[NSSet alloc] initWithArray:array];
//    //通过已有集合构建集合
//    NSSet *set3 = [[NSSet alloc] initWithSet:set2];




#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//-----------------------1.NSSet集合对象---------------------------------
    NSString *s1 = @"zhang3";
    NSString *s2 = @"li4";
    
    //1.创建NSSet对象
    NSSet *set1 = [[NSSet alloc] initWithObjects:s1,s2, nil];
    NSSet *set2 = [NSSet setWithObjects:s1,s2, nil];
    //把数组中的元素全部取出存到set对象中
//    NSSet *set3 = [NSSet setWithArray:<#(NSArray *)#>];
    
    //2.NSSet转成数组
    NSArray *array = [set1 allObjects];
    
    //3.返回元素的个数
    NSUInteger count = [set1 count];
    
    //4.随机从容器中取出某个元素
    NSString *s3 = [set1 anyObject];
    
    //5.NSSet中不能存储重复的对象
    NSString *str = @"aaa";
    NSArray *array2 = [NSArray arrayWithObjects:str,str, nil];
    NSLog(@"%@",array2);
    
    NSSet *set4 = [NSSet setWithObjects:str,str, nil];
    NSLog(@"%@",set4);
    /*
     NSSet与NSArray的区别
     1.数组是由下标的，NSSet没有下标
     2.数组是有序的，NSSet是无序的
     3.数组是可以重复存储同一个对象，NSSet不行
     */
    
    
    
    
    return 0;
}
