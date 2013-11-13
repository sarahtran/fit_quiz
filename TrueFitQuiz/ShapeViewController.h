//
//  ShapeViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface ShapeViewController : QuestionViewController

@property (weak, nonatomic) IBOutlet UIButton *rouButton;
@property (weak, nonatomic) IBOutlet UIButton *botButton;
@property (weak, nonatomic) IBOutlet UIButton *sidButton;
@property (weak, nonatomic) IBOutlet UIButton *bosButton;

- (IBAction)rouAction:(id)sender;
- (IBAction)botAction:(id)sender;
- (IBAction)sidAction:(id)sender;
- (IBAction)bosAction:(id)sender;

@end
