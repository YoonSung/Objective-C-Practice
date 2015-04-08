//
//  AddressCard.m
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}

-(void) setName:(NSString *)theName
{
    if (name != theName)
        name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
    //email = theEmail -- 이 방식은 자신의 멤버 객체를 소유하지 않고, 참조를 가지게 된다. 좋은방법이 아니다.
    if (email != theEmail)
        email = [NSString stringWithString:theEmail];
}

-(NSString *) email
{
    return email;
}

-(NSString *) name
{
    return name;
}

-(void) print
{
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       0                  0       |");
    NSLog(@"====================================");
}

@end
