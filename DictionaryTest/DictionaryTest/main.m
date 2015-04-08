//
//  main.m
//  DictionaryTest
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary * glossary = [NSMutableDictionary dictionary];
        
        //소사전에 항목 세개를 저장한다.
        glossary[@"abstract class"] = @"A class defined so other classes can inherit from it";
        glossary[@"adopt"]          =  @"To implement all the methods defined in a protocol";
        glossary[@"archiving"]     = @"Storing an object for later use";
        
        //항목을 가져와서 보여준다.
        NSLog(@"absract class: %@", glossary[@"abstract class"]);
        NSLog(@"adopt : %@", glossary[@"adopt"]);
        NSLog(@"archiving : %@", glossary[@"archiving"]);
        
        NSLog(@"not : %@", glossary[@"not"]);
    }
    return 0;
}
