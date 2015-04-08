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
        //기본 파일작업
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary *attr;
        
        //파일 매니저의 인스턴스를 생성한다.
        fm = [NSFileManager defaultManager];
        
        NSLog(@"%@", [fm currentDirectoryPath]);
        
        //testFile의 존재여부를 먼저 확인한다.
        if ([fm fileExistsAtPath: fName] == NO) {
            NSLog(@"File doesn't exist");
            return 1;
        }
        
        //이제 복사본을 만들자.
        if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO) {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        //두개의 파일이 일치하는지 확인한다.
        if ([fm contentsEqualAtPath:fName andPath:@"newfile"] == NO) {
            NSLog(@"Files are Not Equal!");
            return 3;
        }
        
        //사본의 이름을 변경하자.
        if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO) {
            NSLog(@"File rename Failed!");
            return 4;
        }
        
        //newfile2의 크기를 알아낸다.
        if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil) {
            NSLog(@"Couldn't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        //원본 파일을 삭제한다.
        /*
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"file removal failed");
            return 6;
        }
        */
        
        NSLog(@"All operations were successful");
        
        //새로 생성한 파일의 내용을 표시한다.
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
        
        
        //데이터를 버퍼에 저장할 경우, NSData , NSMutableData를 이용할 수 있다.
        NSData *fileData;
        
        fileData = [fm contentsAtPath:@"newfile2"];
        
        //newfile2 파일을 읽는다.
        if (fileData == nil) {
            NSLog(@"File read failed!");
            return 7;
        }
        
        //newfile3에 데이터를 기록한다.
        if ([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO) {
            NSLog(@"Couldn't create the copy");
            return 8;
        }
        
        NSLog(@"File copy was successful!");
    }
    return 0;
}
