//
//  AddressBook.m
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"

@implementation AddressBook

@synthesize bookName, book;

-(id) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(id) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject:theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    //[book removeObjectIdenticalTo:theCard]; 메모리상의 위치를 기준으로 삭제
    
    //isEqual을 기준으로 삭제
    [book removeObject:theCard];
}

-(int) entries
{
    return (int)[book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ =========", bookName);
    
    for (AddressCard *theCard in book) {
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    NSLog(@"==================================================");
}

-(AddressCard *) lookup:(NSString *)theName
{
    NSUInteger result = [book indexOfObjectPassingTest:
        ^BOOL(id obj, NSUInteger idx, BOOL *stop) {
            if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
                return YES; //일치하는 객체를 하나만 발견하면 충분하다.
            } else {
                return NO; //계속 찾는다.
            }
            
        }];
    
    //일치하는 객체를 찾았는지 확인
    if (result != NSNotFound) //객체가 하나만 있어야 한다.
        return book[result];
    else
        return nil;
}

-(void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}

@end
