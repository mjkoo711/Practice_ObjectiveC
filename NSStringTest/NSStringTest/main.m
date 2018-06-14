//
//  main.m
//  NSStringTest
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    //NSString *str = [[NSString alloc]initWithString:@"This is NSString"]; //initWith로 시작하는 메소드를 convenience method라고 한다 (동적할당을 함과 동시에 초기화를 한
    NSString *str = @"This is NSString"; //이것도 가능하다 NSString만 허용
    NSLog(@"str : %@", str);

    //NSString은 immutable class이다. 이것은 중간에 값을 수정할 수 없는 클래스이다. 통쨰로 재 할당하는 것은 가능하다.
    //NSSmutableString은 변형이 가능 -> 수정할 수 있는 문자열을 관리할 수 있는 클래스
    NSString *result;
    result = [str substringFromIndex:6]; //s NSString
    result = [str substringToIndex:3]; //Thi
    
    result = [[str substringToIndex:11] substringFromIndex:8]; //NSS <중간부분 짜르기>
    result = [[str substringFromIndex:8] substringToIndex:3]; //NSS
    
    result = [str substringWithRange:NSMakeRange(8, 3)]; //8(location)번부터 3(length)개를 잘라라  => NSS
    result = [[str substringWithRange:NSMakeRange(8, 3)] lowercaseString]; //전부 소문자
    NSLog(@"result : %@", result);

    NSMutableString *mstr = [NSMutableString stringWithString:str]; //MutableString 초기화
    [mstr appendString:@" and NSMutableString"];
    [mstr insertString:@"Mutable" atIndex:8];
    
    NSLog(@"mstr : %@", mstr);
    
    

    
    
    
  }
  return 0;
}
