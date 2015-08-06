//
//  main.m
//  NSDate
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    
//----------------------NSDate的使用----------------------------------
    
    //1.日期对象格式化为字符串
    //默认以0时区输出
    NSDate *date1 = [NSDate date];  //当前设备的时间点
    NSDate *date2 = [[NSDate alloc] init];
    NSLog(@"date1 = %@",date1);
    NSLog(@"date2 = %@",date2);
    
    //在当前时间点的基础上累加一个数值之后的日期，单位为秒
    //明天
    NSDate *date3 = [NSDate dateWithTimeIntervalSinceNow:24*60*60];
    NSLog(@"date3 = %@",date3);
    
    //昨天
    NSDate *date4 = [NSDate dateWithTimeIntervalSinceNow:-24*60*60];
    NSLog(@"date4 = %@",date4);
    
    //时间戳：某一日期到1970年的秒数大小，称为该日期的时间戳
   NSDate *date5 = [NSDate dateWithTimeIntervalSince1970:1343489343];
    NSLog(@"%@",date5);
    
    //获取当前日期的时间戳
    NSDate *timeNow = [NSDate date];
    NSTimeInterval t1 = [timeNow timeIntervalSince1970];
    NSLog(@"获取当前时间的时间戳:%lf",t1);
    

    //3.日期的比较
    //（1）通过调用日期对象的compare 方法进行比较
    NSComparisonResult result = [date3 compare:date2];
    if (result == NSOrderedAscending) {
        NSLog(@"date3 < date2");
    }else if (result == NSOrderedDescending){
        NSLog(@"date3 > date2");
    }
    
    //（2）通过时间戳值比较
    if ([date3 timeIntervalSince1970] > [date2 timeIntervalSince1970]) {
        NSLog(@"date3 > date2");
    }
    
    
//----------------------NSDateFormatter日期格式化----------------------------------
    
    // 日期对象转乘字符串
    NSDate *nowDate =[NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //创建完以后设置日期的格式
    [dateFormatter setDateFormat:@"yyyy年MM月dd日 HH时mm分ss秒 zz"];
    NSString *datestring1 = [dateFormatter stringFromDate:nowDate];
    NSLog(@"格式化1：%@",datestring1);
    
    //设置时区
    //创建时区对象
    NSTimeZone *timezone = [NSTimeZone timeZoneWithName:@"America/New_York"];
    //将时区配置给dateFormatter对象
    [dateFormatter setTimeZone:timezone];
    NSString *datestring2 = [dateFormatter stringFromDate:nowDate];
    NSLog(@"格式化2：%@",datestring2);
    //获取到所有时区的名称
//    NSArray *zoneNames = [NSTimeZone knownTimeZoneNames];
//    for (NSString *zoneName in zoneNames) {
//        NSLog(@"%@",zoneName);
//    }
    
    //2.将字符串格式化为日期对象
    NSString *str = @"2015年07月27日 00:38:53";
    NSDateFormatter *dateFormatter3 = [[NSDateFormatter alloc] init];
    [dateFormatter3 setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
    NSDate *date = [dateFormatter3 dateFromString:str];
    NSLog(@"%@",date);
    
    //--------------------捕获异常------------------------
    //创建一个空的数组
    NSArray *array = [NSArray array];
    @try {//有可能产生异常的代码块
        //数组越界
        [array objectAtIndex:5];
    }
    @catch (NSException *exception) {
        //如果捕捉到错误，则会执行此处的代码
        NSLog(@"错误:%@",exception);
    }
    @finally {
        //可选，不管有没有捕捉到异常，此处代码始终会执行
        NSLog(@"finally");
    }
    
    
    
    return 0;
}
