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
        //***************** 기본 스트링 작업 - 수정 가능한 스트링
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        //수정 불가능한 스트링으로부터 수정 가능한 스트링 만들기
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);
      
        //문자 집어넣기, MutableString이기 때문에 Immutable때와 다르게 반환값이 존재하지 않는다.
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);
        
        //맨 뒤에 넣는 경우 병합하기
        [mstr insertString:@" and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        //appendString 직접 사용
        [mstr appendString:@" and string C"];
        
        //범위로 주어진 서브스트링 지우기
        //index 16에서부터 13개 진행까지 지우기 (16에서 시작해서 13개 지우기)
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        //스트링 범위 찾아 삭제하기
        substr = [mstr rangeOfString:@"string B and "];
        
        if (substr.location != NSNotFound)
        {
            [mstr deleteCharactersInRange:substr];
            NSLog(@"%@", mstr);
        }
        
        //수정 가능한 스트링 직접 설정하기
        [mstr setString:@"This is string A"];
        NSLog(@"%@", mstr);
        
        //특정 범위를 다른 스트링으로 대치하기
        [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
        NSLog(@"%@", mstr);
        
        //검색과 대치
        search = @"This is";
        replace = @"An example of";
        
        substr = [mstr rangeOfString:search];
        
        if (substr.location != NSNotFound)
        {
            [mstr replaceCharactersInRange:substr withString:replace];
            NSLog(@"%@", mstr);
        }
        
        
        //모두 찾아 대치하기, NSMutableString 클래스는 replaceOccurencesOfString:withString:options:range 메서드를 이용해 검색된 결과를 모두 바꿀 수 있다.
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString:search];
        
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            substr = [mstr rangeOfString:search];
        }
        
        NSLog(@"%@", mstr);
        
        
        
        search = @"X";
        replace = @"a";
        [mstr replaceOccurrencesOfString:search withString:replace options:nil range:NSMakeRange(0, [mstr length])];
        NSLog(@"%@", mstr);
    }
    return 0;
}