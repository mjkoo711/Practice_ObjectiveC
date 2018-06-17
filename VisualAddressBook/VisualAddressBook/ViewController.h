//
//  ViewController.h
//  VisualAddressBook
//
//  Created by 구민준 on 2018. 6. 17..
//  Copyright © 2018년 mjkoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController{
  BookManager *myBook;
}
//event를 발생시키고 싶다면 IBAction
//그냥 컨트롤만 연결하고 싶으면 IBOutlet
@property (nonatomic, strong) IBOutlet UITextView *resultTextView; // UITextView는 class명과 같이
@property (nonatomic, strong) IBOutlet UITextField *nameTextField; // 이름 입력창
@property (nonatomic, strong) IBOutlet UITextField *genreTextField;
@property (nonatomic, strong) IBOutlet UITextField *authorTextField;
@property (nonatomic, strong) IBOutlet UILabel *countLabel;




-(IBAction)showAllBookAction:(id)sender; //전체보기 버튼 누를 때 실행될 함수
-(IBAction)addBookAction:(id)sender; //등록버튼에 연결된 함수
-(IBAction)findBookAction:(id)sender; //검색버튼에 연결될 함수
-(IBAction)removeBookAction:(id)sender; //삭제버튼에 연결될 함수

@end

