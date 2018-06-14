//
//  main.m
//  NSArrayTest
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    //NSArray
    NSArray *month = [[NSArray alloc]initWithObjects:@"Jaunary", @"Fabrauary", @"March", @"April", @"May",
                      @"June", @"July", @"August", @"September", nil];
    
    //for (int i=0; i<[month count]; i++) {
    //  NSLog(@"Month : %@", [month objectAtIndex:i]);
    //}
    
    for (NSString *strTemp in month) {
      NSLog(@"month : %@", strTemp);
    }
    
    //NSMutableArray
    // 배열로 배열을 초기화하는 arrayWithArray를 사용
    NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
    [mmonth addObject:@"October"];
    [mmonth addObject:@"November"];
    [mmonth addObject:@"December"];
    
    for (NSString *strTemp in mmonth) {
      NSLog(@"mmonth : %@", strTemp);
    }
    
  }
  return 0;
}
