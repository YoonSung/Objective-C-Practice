//
//  main.m
//  FoundationTest
//
//  Created by yoon on 2015. 4. 7..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        //***************** 숫자 작업하기
        //integer 값
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        
        NSLog(@"%li", (long)myInt);
        
        //lonh 값
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        //char 값
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        //float 값
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        //double 값
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        //잘못된 접근
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        //두 숫자가 같은지 비교
        if ([intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        //두 숫자의 크기비교
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
        
        
        //error, 둘중에 하나만 사용해야 한다. 두개 모두 실행되면, concrete 상수에 값을 할당하려 하기대문에 에러가 발생한다.
        //NSNumber *testNumber = [[NSNumber alloc] initWithInt:50];
        //[testNumber initWithInt:1000];
        
    }
    return 0;
}