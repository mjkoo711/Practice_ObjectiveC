//
//  ViewController.m
//  DigitalFrame
//
//  Created by MinJun KOO on 2018. 6. 18..
//  Copyright © 2018년 minjun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView;
@synthesize toggleButton;
@synthesize speedSlider;
@synthesize speedLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *cuteImages = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           [UIImage imageNamed:@"6.jpg"],
                           [UIImage imageNamed:@"7.jpg"],
                           [UIImage imageNamed:@"8.jpg"],
                           [UIImage imageNamed:@"9.jpg"],
                           [UIImage imageNamed:@"10.jpg"],
                           [UIImage imageNamed:@"11.jpg"],
                           [UIImage imageNamed:@"12.jpg"],
                           [UIImage imageNamed:@"13.jpg"],
                           [UIImage imageNamed:@"14.jpg"],
                           [UIImage imageNamed:@"15.jpg"],
                           nil];
    
    imgView.animationImages = cuteImages;
    imgView.animationDuration = 15.0;
    
    [UIImage imageNamed:@"1.jpg"]; //이름은 문자열로 들어간다. 이미지가 아마 첫화면에 1.jpg를 가져오게 될 것
}

-(IBAction)toggleAction:(id)sender{
    if([imgView isAnimating]){ //toggle 효과를 낸다. 반환형은 YES or NO
        [imgView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    }
    else{ //start할 떄마다 speedslider값을 쓰는 것이 좋겟다.
        imgView.animationDuration = speedSlider.value;
        [imgView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];

    }
}

-(IBAction)changeSpeedAction:(id)sender{
    imgView.animationDuration = 15.0 - speedSlider.value;
    [imgView startAnimating];
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    
    //문자열 형변환 -> float
    NSString *tempstr = [[NSString alloc]initWithFormat:@"%.2f", speedSlider.value ];
    speedLabel.text = tempstr;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
