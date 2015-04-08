//
//  main.m
//  AddressBook
//
//  Created by yoon on 2015. 4. 7..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard * card1 = [[AddressCard alloc]init];
        card1.name = @"test";

        [card1 setName: aName];
        [card1 setEmail : aEmail];
        
        [card1 print];
    }
    return 0;
}
