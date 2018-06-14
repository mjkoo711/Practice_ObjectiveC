//
//  BookManager.h
//  BookManager
//
//  Created by 구민준 on 2018. 6. 14..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book; //Book 클래스 있으니까 일단은 오류를 내지마라. (장점 1. 컴파일이 빨라진다, 장점 2. circular dependancy error 막음)

@interface BookManager : NSObject{
  NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook : (NSString *) name;
-(NSString *)removeBook : (NSString *) name;

@end
