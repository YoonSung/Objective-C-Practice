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
        //***************** 리터럴 숫자객체
        //@표현법을 써서 프로그램 내에서 숫자객체를 생성할 수 있다.
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt; //typedef일뿐
        
        //integer 값
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        //long value 값
        myNumber = @0xabcdefL;
        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        //float value 값
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        NSInteger start = 1;
        NSInteger end = 2;
        NSNumber *center = @((start + end) / 2.0);
        
        NSLog(@"%li", (long) [center integerValue]);
    }
    return 0;
}