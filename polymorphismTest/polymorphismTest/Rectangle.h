//
//  Rectangle.h
//  polymorphismTest
//
//  Created by yoon on 2015. 4. 3..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;
-(void) setWidth: (int)w andHeight: (int)h;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
@end
