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

-(id) initWith: (int)n Over: (int) d
{
    self = [super init];
    
    if (self) {
        [self setTo:n over:d];
    }
    
    return self;
}

-(id) init
{
    return [self initWith:0 Over:0];
}


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

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end
