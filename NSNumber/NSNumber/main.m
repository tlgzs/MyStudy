//
//  main.m
//  NSNumber
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//----------------------NSNumber的使用---------------------------------
    
    //1.创建NSNumber（包装基本数据类型）
    NSNumber *intNumber = [NSNumber numberWithInt:100];
    NSNumber *floatNumber = [NSNumber numberWithFloat:9.22f];
    NSNumber *longNumber = [NSNumber numberWithLong:35985934543];
    NSNumber *boolNumber = [NSNumber numberWithBool:YES];
                           
    NSArray *array = @[intNumber,floatNumber,longNumber,boolNumber];
    NSLog(@"array = %@",array);
    
    //2.解包
    int intValue = [intNumber intValue];
    float floatValue = [intNumber floatValue];
    long longValue = [intNumber longValue];
    bool boolValue = [intNumber boolValue];
    
//----------------------NSNumber优化的语法---------------------------------
    NSNumber *intNumber2 = @12;
    NSNumber *floatNumber2 = @3.1415926;
    NSNumber *longNumber2 = @345975432483289;
    NSNumber *boolNumber2 = @YES;
    NSNumber *charNumber2 = @'a';
    
//----------------------NSValue的使用---------------------------------
    //NSValue可以对结构体进行包装，NSValue是NUNumber的父类
    
    NSRange rang = {10,20};
    //封包
    NSValue *rangValue = [NSValue valueWithRange:rang];
    NSRange rang2 = [rangValue rangeValue];
    NSLog(@"(%ld,%ld)",rang2.location,rang2.length);
    
    //自定义结构体封包
    struct WXPoint {
        float x;
        float y;
    };
    struct WXPoint p = {50,100};
    
   NSValue *pointValue = [NSValue value:&p withObjCType:@encode(struct WXPoint)];
    
    //自定义结构体解包
    struct WXPoint p2;
    [pointValue getValue:&p2];
    NSLog(@"p2.x=%f,p2.y=%f",p2.x,p2.y);
    
//----------------------NSNull的使用---------------------------------
//    NSArray *nilArray = @[nil,nil,nil]; //错误，nil不能存入到数组或字典中
    NSNull *n1 = [NSNull null];
    NSNull *n2 = [NSNull null];
    NSArray *nullArray = @[@"zhang3",n2];
    NSLog(@"nullArray = %@",nullArray);
    
    for (id item in nullArray) {
        if (item == [NSNull null]) {
            NSLog(@"此位置是为空的元素");
            
        }
    }
    
    
    return 0;
}
