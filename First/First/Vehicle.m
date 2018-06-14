//
//  Vehicle.m
//  First
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

@synthesize wheels;
@synthesize seats;

-(void)setWheels:(int)w Seats:(int)s{
  wheels = w;
  seats = s;
}


-(void)print{
  NSLog(@"wheels : %i, seats : %i", wheels, seats);
}
@end
