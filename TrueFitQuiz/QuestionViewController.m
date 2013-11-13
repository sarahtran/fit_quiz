//
//  QuestionViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "QuestionViewController.h"
#import "FitQuiz.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.pinkColor = [UIColor colorWithRed:245/255.0 green:235/255.0 blue:225/255.0 alpha:1.0];
    self.purpleColor = [UIColor colorWithRed:75/255.0 green:27/255.0 blue:75/255.0 alpha:1.0];
    
    self.index = [self.navigationController.viewControllers indexOfObject:self];
    
    self.questionLabel.text = self.fitQuiz.questions[self.index][@"question"];
    if (self.fitQuiz.questions[self.index][@"tip"])
    {
        self.tipLabel.text = self.fitQuiz.questions[self.index][@"tip"];
        [self.tipLabel setBackgroundColor:self.purpleColor];
        [self.tipLabel setTextColor:[UIColor whiteColor]];
    }
    else
    {
        [self.tipLabel setHidden:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction)handleBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
