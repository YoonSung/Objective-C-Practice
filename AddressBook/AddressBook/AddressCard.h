//
//  AddressCard.h
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void)setName: (NSString *)theName;
-(void)setEmail: (NSString *)theEmail;
-(NSString *)name;
-(NSString *)email;

-(void)print;

@end
