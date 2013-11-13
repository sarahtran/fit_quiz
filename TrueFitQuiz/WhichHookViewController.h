//
//  WhichHookViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface WhichHookViewController : QuestionViewController

@property (weak, nonatomic) IBOutlet UIButton *tightestLabel;
@property (weak, nonatomic) IBOutlet UIButton *middleLabel;
@property (weak, nonatomic) IBOutlet UIButton *loosestLabel;

- (IBAction)tightestAction:(id)sender;
- (IBAction)middleAction:(id)sender;
- (IBAction)loosestAction:(id)sender;

@end
