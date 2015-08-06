//
//  main.m
//  NSArray
//
//  Created by VincentFu on 15/7/26.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //-----------------不可变数组(NSArray)8个常用方法及数组遍历-------------------
    
    //---------------------1.数组的创建---------------
 
    NSString *s1 = @"zhang3";
    NSString *s2 = @"li4";
    NSString *s3 = @"wang5";
    
    //注意：最后以nil结尾
    NSArray *array1 = [[NSArray alloc] initWithObjects:s1,s2,s3 ,nil];
    
    NSLog(@"array1 = %@",array1);
    


    //使用类方法创建
    
    NSArray *array2 = [NSArray arrayWithObjects:s1,s2,s3, nil];
    NSLog(@"array2 = %@",array2);
    
    //创建一个数组对象，同时往里面存入一个元素
    NSArray *array3 = [NSArray arrayWithObject:s1]; //比较少用
    NSLog(@"array3 = %@",array3);
    
    //创建一个数组，此数组中的元素来自array1
    NSArray *array4 = [NSArray arrayWithArray:array1];
    NSLog(@"array4 = %@",array4);
    
    //---------------------2.通过下标取元素---------------
    NSString *str1 = [array4 objectAtIndex:0];
    NSLog(@"str1 = %@",str1);

    //---------------------3.数组的元素个数---------------
    NSUInteger count1 = [array4 count];
    NSUInteger count2 = array4.count;//等价于[array4 count]
    NSLog(@"count2 = %ld",count1);
    NSLog(@"count2 = %ld",count2);
    
    //---------------------4.判断数组中是否包含某个对象---------------
    bool isContains = [array4 containsObject:@"zhang3"];
    NSLog(@"isContains:%d",isContains);
    
    //---------------------5.查找某一个对象在数组中的下标位置---------------
    NSUInteger index = [array4 indexOfObject:@"li4"];
    if (index == NSNotFound){
        NSLog(@"没有找到此元素");
    }else{
        NSLog(@"index = %ld",index);
    }

    //---------------------6.连接数组中的字符串---------------
    //数组中的元素必须全部是字符串，才可以用这个方法连接。
    NSString *joinstring = [array4 componentsJoinedByString:@"+"];
    NSLog(@"%@",joinstring);
    
    //---------------------7.返回数组里面最后一个元素---------------

    NSString *lastObj1 = [array4 lastObject];
    NSString *lastObj2 = array4.lastObject;
    NSLog(@"%@",lastObj1);
    NSLog(@"%@",lastObj2);
    
    //---------------------8.在原来的数组后面追加一个元素---------------
    //追加之后，创建一个新的数组
    NSArray *array5 = [array4 arrayByAddingObject:@"zhao6"];
    NSLog(@"%@",array5);
    
    /*
     注意：
     1.数组中不能存放基本数据类型，只能存对象
     2.数组越界
     */


    //---------------------------数组的遍历------------------------
    //1.普通遍历
    for (int i = 0; i<array5.count; i++){
        NSString *str = [array5 objectAtIndex:i];
        NSLog(@"%@",str);
        //如果在循环里面要使用下标，则不要使用快速遍历
//        if(i == 2 ){
//            
//        }
    
    }
    
    //2.快速遍历
    for (NSString *s in array5) {
        NSLog(@"%@",s);
    }
    
    //----------------------xcoude4.4以后编译器对语法做了优化-------------------------------
    //1.创建一个数组
    NSArray *array7 = @[s1,s2,s3];
    NSArray *array8 =[NSArray arrayWithObjects:s1,s2,s3, nil]; //与上方一样效果
    NSLog(@"%@",array7);
    NSLog(@"%@",array8);
    
    //2.用下标访问
    NSString *str = array7[1];
    NSLog(@"%@",str);
    
    
    
    
    return 0;
}
