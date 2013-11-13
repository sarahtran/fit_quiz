//
//  FullnessViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface FullnessViewController : QuestionViewController

@property (weak, nonatomic) IBOutlet UIButton *shallowButton;
@property (weak, nonatomic) IBOutlet UIButton *fullButton;

- (IBAction)shallowAction:(id)sender;
- (IBAction)fullAction:(id)sender;

@end
