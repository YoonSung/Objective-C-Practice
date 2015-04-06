//
//  main.m
//  polymorphismTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square* mySquare = [[Square alloc] init];

        //isMemberOf : 지정한 클래스에 바로 속하는지 확인
        if ([mySquare isMemberOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        
        if ([mySquare isMemberOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        
        if ([mySquare isMemberOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is a member of NSObject class");
        
        //isKindOf : 상속 계층 내에 속하는지 확인
        if ([mySquare isKindOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a kind of Square");

        if ([mySquare isKindOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle");

        if ([mySquare isKindOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NSObject");
        
        //responseTo : 클래스가 클래스 메서드에 응답하는지 확인
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        
        if ([mySquare respondsToSelector:@selector(alloc)] == YES)
            NSLog(@"mySquare responds to alloc method");
        
        //instanceRespondTo : 클래스에서 정의하는 메서드 뿐만 아니라 상속받은 메서드도 체크한다.
        if ([Square instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        
        if ([Square isSubclassOfClass:[Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");
        
        /*
        Print Result
         mySquare is a member of Square class
         
         mySquare is a kind of Square
         mySquare is a kind of Rectangle
         mySquare is a kind of NSObject
         
         mySquare responds to setSide: method
         mySquare responds to setWidth:andHeight: method
         
         Instances of Square respond to setSide: method

         Square is a subclass of a rectangle
        */
    }
    return 0;
}
