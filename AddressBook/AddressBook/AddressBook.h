//
//  AddressBook.h
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

- (id)initWithName: (NSString *)name;
- (void)addCard: (AddressCard *)theCard;
- (void) removeCard: (AddressCard *)theCard;
- (int)entries;
- (void)list;
- (AddressCard *) lookup: (NSString *) theName;
- (NSIndexSet *) lookupAll: (NSString *) theName;
- (void)sort;

@end
