//
//  Fraction+FractionMathOps.h
//  FractionTest
//
//  Created by yoon on 2015. 4. 6..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *)add:(Fraction *)f;
-(Fraction *)sub:(Fraction *)f;
-(Fraction *)mul:(Fraction *)f;
-(Fraction *)div:(Fraction *)f;
@end