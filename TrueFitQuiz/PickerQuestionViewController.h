//
//  PickerQuestionViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface PickerQuestionViewController : QuestionViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end
