//
//  Person.h
//  NSPredicate
//
//  Created by VincentFu on 15/8/1.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;

+(id)personWithName:(NSString *)name andAge:(NSUInteger)age;




@end
