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
        //***************** 스트링 객체
        //다음과 같이 문자 스트링을 따옴표로 묶으면 문자 스트링 객체를 생성하게 된다. @"Programming is fun"
        //NSString 객체는 unichar 문자로 이루어져 있다. unichar 문자는 유니코드 표준에 따른 멀티바이트 문자다.
        //위의 문자 스트링 상수 객체는 NSConstantString(NSString의 서브클래스, immutable) 클래스에 속한다.
        
        NSString * str = @"Programming is fun";
        NSLog(@"%@", str);
        
        //%@는 NSString 뿐만 아니라 다른 객체를 표시하는 데도 사용할 수 있다.
        NSLog(@"%@", @100);
        
        //심지어 %@ 형식 문자를 사용하여 배열, 딕셔너리, 세트에 담긴 전체 내용을 표시할 수 있다.
        //사실, 직접 만든 클래스에서도 상속받은 description 메서드를 재정의해 주기만 하면 이 포맷 문자로 객체를 표시할 수 있다.
        //만약 재정의 하지 않으면 NSLog는 클래스 이름과 객체의 메모리 주소를 표시한다.
        
        /*
         수정 가능한 스트링 객체는 NSMutableString에서 처리한다.
         */
        
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        //문자 개수 세기
        NSLog(@"Length of str1 : %lu", [str1 length]);
        
        //스트링 복사하기
        res = [NSString stringWithString:str1];
        NSLog(@"copy : %@", res);
        
        //스트링을 다른 스트링 두에 붙여 복사하기
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatentation : %@", str2);
        
        //두개의 스트링이 같은지 비교
        if ([str1 isEqualToString:res] == YES)
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        //두 개의 스트링 크기 비교
        compareResult = [str1 compare: str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else
            NSLog(@"str1 > str2");
        
        //대문자로 변환
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion : %s", [res UTF8String]);
        
        //소문자로 변환
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion : %@", res);
        
        NSLog(@"Original string : %@", str1);
    }
    return 0;
}