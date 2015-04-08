//
//  main.m
//  FilePractice
//
//  Created by yoon on 2015. 4. 8..
//  Copyright (c) 2015년 architree. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //기본 디렉토리 작업
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;
        
        //파일 매니저의 인스턴스를 생성한다.
        fm = [NSFileManager defaultManager];
        
        //현재 디렉토리를 받아온다.
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        //새 디렉토리를 생성한다.
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL] == NO) {
            NSLog(@"Couldn't create directory!");
            return 1;
        }
        
        //새 디렉토리의 이름을 변경한다.
        if ([fm moveItemAtPath:dirName toPath:@"newdir" error:NULL] == NO) {
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        //새 디렉토리로 현재 디렉토리를 이동한다.
        if ([fm changeCurrentDirectoryPath:@"newdir"] == NO) {
            NSLog(@"Change directory failed!");
            return 3;
        }
        
        //현재 디렉토리를 받아 표시한다.
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        NSLog(@"All operations were successful!");
    }
    return 0;
}
