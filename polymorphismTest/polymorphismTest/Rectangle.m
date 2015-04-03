//
//  Rectangle.m
//  polymorphismTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//
#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(void) setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(void)setOrigin:(XYPoint *)pt
{
    if (! origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *)origin
{
    return origin;
}

@end
