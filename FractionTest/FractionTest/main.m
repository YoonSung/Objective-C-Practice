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
        Fraction* resultFraction;
        
        [aFraction setTo:1 over:4];
        
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction add:bFraction];
        [resultFraction print];
    }
    return 0;
}
