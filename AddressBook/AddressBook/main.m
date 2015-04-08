//
//  main.m
//  AddressBook
//
//  Created by yoon on 2015. 4. 7..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tonny Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard * card1 = [[AddressCard alloc]init];
        AddressCard * card2 = [[AddressCard alloc]init];
        AddressCard * card3 = [[AddressCard alloc]init];
        AddressCard * card4 = [[AddressCard alloc]init];
        
        //주소록 카드를 새로 만든다.
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
        
        AddressCard *myCard;
        
        NSLog(@"Entires in address book after creation : %i", [myBook entries]);
        
        //주소 카드를 네 개 만든다.
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        //주소록에 카드를 추가한다.
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSLog(@"Entires in address book after adding card: %i", [myBook entries]);
        
        //주소록의 모든 항목을 나열한다.
        [myBook list];
        
        
        //이름으로 사람을 찾는다.
        NSLog(@"Stephen Kochan");
        myCard = [myBook lookup:@"stephen kochan"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found");
        
        //주소록에서 항목을 제거한다.
        [myBook removeCard:myCard];
        [myBook list]; //제거되었는지 확인한다.
        
    }
    return 0;
}
