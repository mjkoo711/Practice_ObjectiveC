//
//  main.m
//  NSDictionaryTest
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //NSDictionary
      //static한 자료구조를 사용할 때는 nil을 사용해준다.
    NSDictionary *dic =  [[NSDictionary alloc]initWithObjectsAndKeys:@"최강사", @"이름", @"모름", @"나이", nil];
    
    NSLog(@"name : %@", [dic objectForKey:@"이름"]);
    NSLog(@"age : %@", [dic objectForKey:@"나이"]);
    
    //NSMutableDictionary
    NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
    
    [mdic setObject:@"한국" forKey:@"사는곳"];
    [mdic setObject:@"살색" forKey:@"얼굴색"];
    
    NSLog(@"name : %@", [mdic objectForKey:@"이름"]);
    NSLog(@"age : %@", [mdic objectForKey:@"나이"]);
    NSLog(@"location : %@", [mdic objectForKey:@"사는곳"]);
    NSLog(@"face color : %@", [mdic objectForKey:@"얼굴색"]);



  }
  return 0;
}
