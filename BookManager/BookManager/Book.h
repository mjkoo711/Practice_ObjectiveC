//
//  Book.h
//  BookManager
//
//  Created by 구민준 on 2018. 6. 14..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
//nonatomic : 동시에 쓰레드를 통해 값을 바꾸는 것 (atomic은 조금 느림, 하나하나 하기 때문에), strong : 동적할당이 되어 객체를 참조하고 있다.
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void)bookPrint;

@end
