//
//  SpillageViewController.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionViewController.h"

@interface SpillageViewController : QuestionViewController

@property (assign, nonatomic) BOOL cleavage;
@property (assign, nonatomic) BOOL underarms;
@property (assign, nonatomic) BOOL back;
@property (assign, nonatomic) BOOL sides;
@property (assign, nonatomic) BOOL noSpills;

@property (weak, nonatomic) IBOutlet UIButton *cleavageButton;
@property (weak, nonatomic) IBOutlet UIButton *underarmsButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *sidesButton;
@property (weak, nonatomic) IBOutlet UIButton *noSpillsButton;

- (IBAction)cleavageAction:(id)sender;
- (IBAction)underarmsAction:(id)sender;
- (IBAction)backAction:(id)sender;
- (IBAction)sidesAction:(id)sender;
- (IBAction)noSpillsAction:(id)sender;

@end
