//
//  AddressCard.h
//  AddressBook
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

//copy 속성은 이전에 작성했던 버전처럼 새터 메서드에서 인스턴스 변수의 사본을 만들라는 의미이다.
//기본 값은 사본을 만드는 대신 단순하게 대입(참조전달) 하는데, 이는 앞에서도 설명했듯이 부적절한 접근법이다.

//nonatomic 속성은 다중 스레드에서 동시에 한 인스턴스에 접근하려 할 때 발생할 수 있는 경쟁조건에 대해
//걱정할 필요가 없다고 지시한다.
@property(copy, nonatomic) NSString *name, *email;

-(void)print;
-(void)setName: (NSString *)theName andEmail: (NSString *)theEmail;
-(NSComparisonResult) compareNames: (id) element;

@end
