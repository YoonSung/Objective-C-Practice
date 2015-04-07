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
        /*
        배열도 수정가능한 배열과 불간으한 배열이 있다.
         NSArray, NSMutableArray. 후자가 전자를 상속하기 때문에 그 메서드들도 상속받는다.
        */
        
        //매월의 이름을 담고 있는 배열
        //메서드에서 받는 인수의 개수가 변할 수 있다. 목록이 끝났음을 표시하려면 마지막 값으로 nil을 지정해 주어야 하는데, 이 값은 배열에 실제로 저장되지는 않는다.
        //objective-c 는 다음과 같은 문법으로도 NSArray를 설정할 수 있게 해준다. @[ele1, ele2, ...elemn];
        //이 경우에는 배열 끝에 nil을 넣지 않는다.
        NSArray *monthNames = [NSArray arrayWithObjects:@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
        
        //배열 안의 모든 원소를 나열한다.
        NSLog(@"Month   Name");
        NSLog(@"=====   ====");
        
        for (int i = 0; i < 12; ++i) {
            NSLog(@" %2i      %@", i+1, [monthNames objectAtIndex:i]);
        }
        
        
        
        
        
        
        
        NSMutableArray *numbers = [NSMutableArray array];

        for (int i=0; i < 10; ++i)
            numbers[i] = @(i);

        //배열의 항목에 순차적으로 접근하여 값을 표시한다.
        for (int i=0; i < 10; ++i)
            NSLog(@"%@", numbers[i]);

        //NSLog가 하나의 %@포맷으로 표시한다.
        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@", numbers);
    }
    return 0;
}