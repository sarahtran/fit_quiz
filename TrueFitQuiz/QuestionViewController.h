//
//  QuestionViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FitQuiz;

@interface QuestionViewController : UIViewController

@property (strong, nonatomic) FitQuiz *fitQuiz;
@property (assign, nonatomic) NSUInteger index;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

@property (strong, nonatomic) UIColor *pinkColor;
@property (strong, nonatomic) UIColor *purpleColor;

- (IBAction)handleBack:(id)sender;

@end
