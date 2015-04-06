//
//  Complex.h
//  FractionTest
//
//  Created by yoon on 2015. 4. 6..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal: (double)a andImagenary: (double)b;
-(Complex *) add: (Complex *) c;

@end
