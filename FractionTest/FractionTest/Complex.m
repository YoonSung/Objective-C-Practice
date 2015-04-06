//
//  Complex.m
//  FractionTest
//
//  Created by yoon on 2015. 4. 6..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@" %g + %gi", real, imaginary);
}

-(void)setReal:(double)a andImagenary:(double)b
{
    real = a;
    imaginary = b;
}

-(Complex *) add: (Complex *) c
{
    Complex * result = [[Complex alloc] init];
    result.real = real + c.real;
    result.imaginary = imaginary + c.imaginary;
    
    return result;
}

@end
