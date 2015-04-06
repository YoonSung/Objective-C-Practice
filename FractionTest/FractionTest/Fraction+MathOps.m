//
//  Fraction+FractionMathOps.m
//  FractionTest
//
//  Created by yoon on 2015. 4. 6..
//  Copyright (c) 2015년 architree. All rights reserved.
//
#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    //두 분수를 더하려면:
    // a/b + c/d = ((a*d) + (b*c )) / (b * d)
    
    //result에 계산 결과가 저장된다.
    Fraction *result = [[Fraction alloc] init];
    result.numerator = [self numerator] * f.denominator + [self denominator] * f.numerator;
    result.denominator = [self denominator] * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *)sub:(Fraction *)f
{
    //두 분수를 빼는 방법:
    // a/b - c/d = ((a*d) - (b*c)) / (b*d)
    
    Fraction *result = [[Fraction alloc] init];
    result.numerator = ([self numerator] * f.denominator) - ([self denominator] * f.numerator);
    result.denominator = [self denominator] * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *)mul:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = [self numerator] * f.numerator;
    result.denominator = [self denominator] * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *)div:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}

@end
