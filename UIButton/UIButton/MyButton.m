//
//  MyButton.m
//  UIButton
//
//  Created by VincentFu on 15/8/4.
//  Copyright (c) 2015年 Chinamyo. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(10, 10, 150, 80);
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    return CGRectMake(160, 10, 140, 80);
}

@end
