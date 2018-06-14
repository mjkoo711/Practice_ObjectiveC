//
//  main.m
//  First
//
//  Created by 구민준 on 2018. 6. 4..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h> 
#import "Vehicle.h"
// (class object + instance object) == object
// + : 동적할당 하지 않고도 사용할 수 있는 method : class method
// - : 동적할당 해야 사용할 수 있는 method : instance method


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Vehicle *hello = [[Vehicle alloc]init]; //alloc으로 메모리에 할당해서 init으로 초기화를 한다.
    
    //hello.wheels = 4; // [hello setWheels:4];
    //hello.seats = 2; //[hello setSeats:2];
    [hello setWheels:4 Seats:2];
    
    if(hello.wheels == 4){
      NSLog(@"wheels : 4");
    }
    else if(hello.wheels == 3){
      NSLog(@"wheels : 3");
    }
    else{
      NSLog(@"no");
    }
    
    switch (hello.seats) {
      case 4:
        NSLog(@"seats : 4");
        break;
      case 2:
        NSLog(@"seats : 2");
        break;
      default:
        break;
    }
    
    for (int i=0; i<hello.wheels; i++) {
      NSLog(@"wheels %i", i);
    }
    

    
    NSLog(@"wheels : %i, seats : %i", hello.wheels, hello.seats);     //NSLog(@"wheels : %i, seats : %i",[hello getWheels], [hello seats]);
  }
  return 0;
}
