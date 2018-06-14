//
//  Book.m
//  BookManager
//
//  Created by 구민준 on 2018. 6. 14..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;

-(void)bookPrint{
  NSLog(@"Name : %@", name);
  NSLog(@"Genre : %@", genre);
  NSLog(@"Author : %@", author);
}

@end
