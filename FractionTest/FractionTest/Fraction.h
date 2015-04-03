//
//  Fraction.h
//  FractionTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;
-(void) print;
-(double) convertToNum;
-(void) setTo: (int)n over: (int)d;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;
@end