//
//  SymmetryViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface SymmetryViewController : QuestionViewController

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UIButton *sameButton;

- (IBAction)leftAction:(id)sender;
- (IBAction)rightAction:(id)sender;
- (IBAction)sameAction:(id)sender;

@end
