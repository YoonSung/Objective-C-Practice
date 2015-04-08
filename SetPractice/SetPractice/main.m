//
//  main.m
//  SetPractice
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>


//Printing 카테고리로 NSSet에 print메서드를 추가한다.
@interface NSSet(Printing)
-(void) print;
@end

@implementation NSSet(Printing)
-(void) print
{
    printf("{ ");
    
    for(NSNumber *element in self)
        printf(" %li", (long)[element integerValue]);
    
    printf("}\n");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @5, @10, nil];
        NSSet *set2 = [NSSet setWithObjects: @-5, @100, @3, @5, nil];
        NSSet *set3 = [NSSet setWithObjects: @12, @200, @3, nil];
        
        NSLog(@"set1 : ");
        [set1 print];
        NSLog(@"set2 : ");
        [set2 print];
        
        //일치여부 확인
        if ([set1 isEqualToSet: set2])
            NSLog(@"set1 equals set2");
        else
            NSLog(@"set1 is not equal to set2");
        
        //멤버십 테스트
        if ([set1 containsObject: @10] == YES)
            NSLog(@"set1 contains 10");
        else
            NSLog(@"set1 does not contain 10");
        
        if ([set2 containsObject: @10] == YES)
            NSLog(@"set2 contains 10");
        else
            NSLog(@"set2 does not contain 10");
            
        
        //수정 가능한 세트 set1에서 객체 추가하고 제거한다.
        [set1 addObject:@4];
        [set1 removeObject:@10];
        NSLog(@"set1 after adding 4 and removing 10: ");
        [set1 print];
        
        //두개의 세트의 교차 구하기
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];
        
        //두개의 세트의 합 구하기
        [set1 unionSet: set3];
        NSLog(@"set1 union set3 : ");
        [set1 print];
    }
    return 0;
}
