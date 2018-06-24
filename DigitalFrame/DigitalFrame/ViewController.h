//
//  ViewController.h
//  DigitalFrame
//
//  Created by MinJun KOO on 2018. 6. 18..
//  Copyright © 2018년 minjun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)toggleAction:(id)sender;
-(IBAction)changeSpeedAction:(id)sender; //슬라이드 이벤트를 받아서 자동적으로 속도조절하기 위해.

@end

