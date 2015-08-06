//
//  Worker.h
//  NSArryDemo
//
//  Created by VincentFu on 15/7/24.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Worker : NSObject{
    
    NSString *_name;
    NSInteger _age;
    float _money;
}

-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;
-(void)setMoney:(float)money;

@end
