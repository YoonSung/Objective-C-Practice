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
        Fraction* f1 = [[Fraction alloc] init];
        Fraction* f2 = [[Fraction alloc] init];
        Fraction* fracResult;
        
        Complex* c1 = [[Complex alloc] init];
        Complex* c2 = [[Complex alloc] init];
        Complex* comResult;
        
        [f1 setTo:1 over:10];
        [f2 setTo:2 over:15];
        [c1 setReal:18.0 andImagenary:2.5];
        [c2 setReal:-5.0 andImagenary:3.2];
        
        //두개의 복소수를 더하고 결과를 표시한다
        [c1 print];
        NSLog(@"              +");
        [c2 print];
        NSLog(@"--------------");
        comResult = [c1 add: c2];
        [comResult print];
        NSLog(@"\n");
        
        //두개의 분수를 더하고 결과를 표시한다.
        [f1 print];
        NSLog(@"  +");
        [f2 print];
        NSLog(@"-------");
        fracResult = [f1 add:f2];
        [fracResult print];
    }
    return 0;
}
