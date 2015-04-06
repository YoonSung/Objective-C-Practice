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
        
        //이전방식 = 정적바인딩
        //현재방식 = 동적바인딩 (런타임에 확인, id)
        
        //* 가 없으며, .연산자를 사용할 시 컴파일 에러발생
        id dataValue;
        Fraction* f1 = [[Fraction alloc] init];
        Complex* c1 = [[Complex alloc] init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImagenary:2.5];
        
        //dataValue에 분수를 대입한다
        dataValue = f1;
        [dataValue print];
        
        //dataValue에 복소수를 대입한다.
        dataValue = c1;
        [dataValue print];
    }
    return 0;
}
