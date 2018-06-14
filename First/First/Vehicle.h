//
//  Vehicle.h
//  First
//
//  Created by 구민준 on 2018. 6. 12..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject{
  // 멤버 변수의 위치
}

@property int wheels;  // @property (getter=getWheels) int wheels; 로 getter의 이름 변경 가능
@property int seats;

-(void)setWheels:(int)w Seats:(int)s;

-(void)print;

@end


/* 함수 인자 여러개 받는 법 <콜론과 띄어쓰기 기준>
 보통 문법 : void drawCircle(int x, int y, int r);
 objective-c : -(void)drawCircleX:(int)x Y:(int)y R:(int)r;
 objective-c : -(void)drawCircleXYR:(int)x :(int)y :(int)r;
 
 그리고 이것을 호출 할 땐 : [객체명 drawCircleX :1 :2 :3];
 
*/
