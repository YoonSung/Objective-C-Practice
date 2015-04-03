//
//  main.m
//  FractionTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction* aFraction = [[Fraction alloc] init];
        Fraction* bFraction = [[Fraction alloc] init];
        
        [aFraction setTo:100 over:200];
        [aFraction print];
        
        [bFraction setTo:1 over:3];
        [bFraction print];
    }
    return 0;
}
