//
//  Square.m
//  polymorphismTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    // [self width]를 뜻한다
    return self.width;
}

@end
