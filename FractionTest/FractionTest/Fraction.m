//
//  Fraction.m
//  FractionTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator !=0)
        return numerator / denominator;
    else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(void) add:(Fraction *)f
{
    //두 분수를 더하려면:
    // a/b + c/d = ((a*d) + (b*c )) / (b * d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}


@end
