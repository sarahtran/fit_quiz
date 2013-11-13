//
//  ShoulderStrapsViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface ShoulderStrapsViewController : QuestionViewController

@property (weak, nonatomic) IBOutlet UIButton *slipButton;
@property (weak, nonatomic) IBOutlet UIButton *digButton;
@property (weak, nonatomic) IBOutlet UIButton *fineButton;

- (IBAction)slipAction:(id)sender;
- (IBAction)digAction:(id)sender;
- (IBAction)fineAction:(id)sender;

@end
