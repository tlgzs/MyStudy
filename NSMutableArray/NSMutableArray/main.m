//
//  main.m
//  NSMutableArray
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    
//--------------------------可变数组---------------------------
//    //常用方法
//    //1.初始化，设定元素个数为5个，但可以更改的
//    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:5];
//    //2.向数组中添加一个元素
//    [mutableArray addObject:@"zhang3"];
//    //3.想数组中指定下标插入元素
//    [mutableArray insertObject:@"li4" atIndex:0];
//    //4.移除最后一个元素
//    [mutableArray removeLastObject];
//    //5.移除指定元素
//    [mutableArray removeObject:@"li4"];
//    //6.移除指定下标的元素
//    [mutableArray removeObjectAtIndex:0];
//    //7.向数组中添加数组
//    [mutableArray addObjectsFromArray:array];
    
    
    
    //--------------------------1.可变数组的创建---------------------------
    NSString *a1 = @"zhang3";
    NSString *a2 = @"li4";
    NSString *a3 = @"wang5";
    NSMutableArray *mArray1 = [[NSMutableArray alloc] initWithObjects:a1,a2,a3, nil];
    NSLog(@"%@",mArray1);
    //创建数组时开辟3个空间用于存储元素，当存储的元素超过了3个，数组会自动增大空间。
    NSMutableArray *mArray2 = [[NSMutableArray alloc] initWithCapacity:3];
    NSMutableArray *mArray3 = [NSMutableArray arrayWithCapacity:3];
    
    
    //--------------------------2.添加元素---------------------------
    [mArray2 addObject:a1];
    [mArray2 addObject:a2];
    [mArray2 addObject:a3];
    
    //将mArray2中的元素全部添加到mArray3，mArray2的元素没有被删除
//    [mArray3 addObjectsFromArray:mArray2];
//    NSLog(@"mArray3 = %@",mArray3);
    
    //将Marray2作为二维数组添加到mArray3上面
    [mArray3 addObject:mArray2];
    NSLog(@"mArray3 = %@",mArray3);
    
    //--------------------------3.插入元素---------------------------
    [mArray2 insertObject:@"zhao6" atIndex:1];
    NSLog(@"%@",mArray2);
    
    //--------------------------4.替换元素---------------------------
    [mArray2 replaceObjectAtIndex:0 withObject:@"Chinamyo"];
    NSLog(@"%@",mArray2);
    //--------------------------5.互换两个元素的位置---------------------------
    
    [mArray2 exchangeObjectAtIndex:2 withObjectAtIndex:3];
    NSLog(@"%@",mArray2);
    
    //--------------------------6.删除元素---------------------------
    //根据下标删除元素
    [mArray2 removeObjectAtIndex:0];
    NSLog(@"%@",mArray2);
    
//    //删除最后一个元素
//    [mArray2 removeLastObject];
//    NSLog(@"%@",mArray2);
    
    
//    [mArray2 removeObject:@"wang5"]; //用得不多
//    NSLog(@"%@",mArray2);
    
        //删除全部元素
        [mArray2 removeAllObjects];
        NSLog(@"%@",mArray2);
    
    
    
    
    
    return 0;
}
