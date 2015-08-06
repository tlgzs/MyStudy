//
//  Person.m
//  NSPredicate
//
//  Created by VincentFu on 15/8/1.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "Person.h"

@implementation Person

+(id)personWithName:(NSString *)name andAge:(NSUInteger)age{
    Person *person = [[Person alloc] init];
    person.name = name;
    person.age =age;
    
    return person;

}

-(NSString *)description{
    NSString *s = [NSString stringWithFormat:@"name = %@ , age = %ld",_name,_age];
    return s;
}

@end
