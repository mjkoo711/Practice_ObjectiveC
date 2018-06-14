//
//  main.m
//  BookManager
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//


//책을 등록하고, 찾고, 지우고하는 관리하는 프로그램
//클래스는 2개로 만들 것 (Book, BookManager)

/* XCode 사용법 */
//왼쪽 : Navigator 영역
//오른쪽 : Utility 영역 (UI부분 만들 때 많이 사용하게 된다)
//오른쪽 윗부분 : Inspective 영역
//오른쪽 밑부분 : Library 영역

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"장르";
    book1.author = @"셰익스피어";
    //[book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"헤밍웨이";
    //[book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    //[book3 bookPrint];
    
    BookManager *myBook = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    NSLog(@"%@", [myBook showAllBook]);
    NSLog(@"count : %li", [myBook countBook]); //unsigned int : %li
    
    //책 확인하기
    NSString *strTemp = [myBook findBook:@"죄와 벌"];
    if(strTemp != nil){
      NSLog(@"%@", strTemp);
    }
    else{
      NSLog(@"찾으시는 책이 없네요");
    }
    
    //특정 제목 책 지우기.
    NSString *removeResult = [myBook removeBook:@"죄와 벌"];
    if(removeResult != nil){
      NSLog(@"%@ 책을 지웠습니다.", removeResult);
    }
    else{
      NSLog(@"지우려는 책이 없습니다.");
    }
    
    //지워졌는지 확인하기
    NSLog(@"%li", [myBook countBook]);
    NSLog(@"%@", [myBook showAllBook]);
  }
  return 0;
}
