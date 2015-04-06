//
//  main.m
//  FractionTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b;
        
        a = [[Fraction alloc] initWith: 1 Over: 3];
        b = [[Fraction alloc] initWith: 2 Over: 5];
        
        [a print];
        [b print];
    }
    return 0;
}
