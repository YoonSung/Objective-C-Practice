//
//  main.m
//  polymorphismTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB* b = [[ClassB alloc] init];
        [b initVar];
        [b printVar];
    }
    return 0;
}
