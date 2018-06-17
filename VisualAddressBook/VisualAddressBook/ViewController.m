//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 구민준 on 2018. 6. 17..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView;
@synthesize nameTextField, genreTextField, authorTextField;
@synthesize countLabel;


//초기화 코드는 항상 여기에
- (void)viewDidLoad {
  [super viewDidLoad];
  Book *book1 = [[Book alloc]init];
  book1.name = @"햄릿";
  book1.genre = @"장르";
  book1.author = @"셰익스피어";
  //[book1 bookPrint];
  
  Book *book2 = [[Book alloc]init];
  book2.name = @"누구를 위하여 종을 울리나";
  book2.genre = @"전쟁소설";
  book2.author = @"헤밍웨이";
  //[book2 bookPrint];
  
  Book *book3 = [[Book alloc]init];
  book3.name = @"죄와 벌";
  book3.genre = @"사실주의";
  book3.author = @"톨스토이";
  //[book3 bookPrint];
  
  myBook = [[BookManager alloc]init];
  
  [myBook addBook:book1];
  [myBook addBook:book2];
  [myBook addBook:book3];
  
  countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}

//IBAction : Interface Build의 약자 (IB), IBAction을 적어야지만 Received Action에서 함수명이 뜬다.
-(IBAction)showAllBookAction:(id)sender{
  resultTextView.text = [myBook showAllBook]; //.text의 자료형은 NSString이기 때문에 가능한 것.
  // 이것도 같은 역할 : [resultTextView setText:[myBook showAllBook]];
}
-(IBAction)addBookAction:(id)sender{
  Book *bookTemp = [[Book alloc]init];
  bookTemp.name = nameTextField.text;
  bookTemp.genre = genreTextField.text;
  bookTemp.author = authorTextField.text;
  
  [myBook addBook:bookTemp];
  countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];

  resultTextView.text = @"등록이 완료되었습니다.";
}

-(IBAction)findBookAction:(id)sender{
  NSString *strTemp = [myBook findBook:nameTextField.text];

  if(strTemp != nil){
    resultTextView.text = strTemp;
  }
  else{
    resultTextView.text = @"찾으시는 책이 없습니다.";
  }
}

-(IBAction)removeBookAction:(id)sender{
  NSString *strTemp = [myBook findBook:nameTextField.text];
  
  if(strTemp != nil){
    [myBook removeBook:nameTextField.text];
    resultTextView.text = @"책 목록에서 제거하였습니다.";
  }
  else{
    resultTextView.text = @"지우려는 책이 없습니다.";
  }
  countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];

}
- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
