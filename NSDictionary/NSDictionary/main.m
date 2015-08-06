//
//  main.m
//  NSDictionary
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//
/*
 集合对象-字典的处理方法
 字典的基本概念
 Foundation中的字典（NSDictionary，NSMutableDictionary）是由键和值对组成的数组数据集合。正如，我们在字典里查找
 单词的定义一样。通过key(键值)，查找对应value（值），key通常是字符串对象，也可以是其他任意类型对象。在一个字典对象中，
 key的值必须是唯一的。此外，字典对象的键和值不可以为空（nil），如果需要在一个字典对象中表示一个空值，可以使用NSNull对象。
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//--------------------不可变字典（NSDictionary）----------------------------------------
    //1.字典的创建
    NSArray *array1 = [NSArray arrayWithObjects:@"zhangsan",@"zhangfei", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"lisi",@"libai", nil];
    NSDictionary *dic1 = [[NSDictionary alloc] initWithObjectsAndKeys:array1,@"zhang",array2,@"li", nil];
    NSLog(@"%@",dic1);
    //取得字典中的元素个数
    NSUInteger count = dic1.count;
    NSLog(@"count:%ld",count);
    
    //创建字典时，初始化一个元素
    NSDictionary *dic2 = [NSDictionary dictionaryWithObject:array1 forKey:@"zhang"];
    NSLog(@"%@",dic2);
    
    //2.获取字典中所有的key
    NSArray *allkey = [dic1 allKeys];
    NSLog(@"allkey = %@",allkey);

    //3.获取字典中所有的value
    NSArray *allvalue = [dic1 allValues];
    NSLog(@"allvalue = %@",allvalue);
    
    //4.通过key获得value
    NSArray *array3 = [dic1 objectForKey:@"zhang"];
    NSLog(@"array3 = %@",array3);
    
//--------------------字典中优化的语法----------------------------------------
    //创建字典
    NSDictionary *dic3 = @{@"zhang":array1,@"li":array2};
    NSLog(@"dic3 = %@",dic3);
    //通过key取value
    NSArray *array4 = dic3[@"zhang"];
    NSLog(@"array4 = %@",array4);
    
    
//--------------------可变字典（NSMutableDictionary）----------------------------------------
    //1.创建一个可变的字典
    NSMutableDictionary *mdic1 = [[NSMutableDictionary alloc] initWithCapacity:3];
    
    //2.添加元素
//    [mdic1 setObject:array1 forKey:@"zhang"];  //向数组中添加了一个元素
//    [mdic1 setObject:array2 forKey:@"li"];
    
    //将字典dic1中所有元素添加到mdic1字典中
    [mdic1 addEntriesFromDictionary:dic1]; //注意：相同的key在字典中是不能重复添加的，如果添加相同的key会将原来的value覆盖掉
    
    NSLog(@"mdic1 = %@",mdic1);
    
    //3.删除
    //根据key删除元素
//    [mdic1 removeObjectForKey:@"zhang"];
//    NSLog(@"%@",mdic1);
    
    //删除所有元素
//    [mdic1 removeAllObjects];
//    NSLog(@"%@",mdic1);
    
    //根据多个key删除对应的多个元素
//    [mdic1 removeObjectsForKeys:@[@"zhang",@"li"]];
//    NSLog(@"%@",mdic1);
    
//--------------------遍历字典----------------------------------------
    //1.快速遍历（用得比较多）
//    for (NSString *key in mdic1) {
//        NSArray *name = [mdic1 objectForKey:key];
//        NSLog(@"key = %@,value = %@",key,name);
//    }
    
    //2.普通遍历
   NSArray *allkeys2 = [mdic1 allKeys];
    for (int i=0; i<allkeys2.count; i++) {
        NSString *key= allkeys2[i];
        NSArray *name = mdic1[key];
        NSLog(@"key = %@,value = %@",key,name);
    }
    
    //注意：字典中的元素是无序的
    
        return 0;
}
