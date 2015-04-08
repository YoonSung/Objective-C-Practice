//
//  AddressCard.m
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name = _name, email = _email;

-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    //이건 참조를 가진다. 좋은방법이 아니므로 setter 메서드를 사용한다.
    //setter 메서드를 사용하면 추상화 단계를 하나 더 올린 셈이된다.
    //_name = theName;
    //_email = theEmail;
    self.name = theName; // == [self setName: theName];
    self.email= theEmail;
}

-(void) print
{
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [_name UTF8String]);
    NSLog(@"|  %-31s |", [_email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       0                  0       |");
    NSLog(@"====================================");
}

-(BOOL)isEqual:(AddressCard *)theCard
{
    if (
        [_name isEqualToString:theCard.name] == YES
        &&
        [_email isEqualToString:theCard.email] == YES
        )
        return YES;
    else
        return NO;
}

@end
