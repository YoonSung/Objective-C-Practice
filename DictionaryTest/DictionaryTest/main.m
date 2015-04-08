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
        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        //항목을 가져와서 보여준다.
        NSLog(@"absract class: %@", [glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt : %@", [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving : %@", [glossary objectForKey:@"archiving"]);
        
        NSLog(@"not : %@", [glossary objectForKey:@"not"]);
    }
    return 0;
}
