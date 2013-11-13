//
//  PickerQuestionViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "PickerQuestionViewController.h"
#import "FitQuiz.h"

@interface PickerQuestionViewController ()

@end

@implementation PickerQuestionViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return [self.fitQuiz.questions[self.index][@"answers"] count];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (row == 0)
    {
        [self.fitQuiz removeAnswerForQuestionIndex:self.index];
    }
    else
    {
        NSString *answer = [NSString stringWithFormat:@"%@", [self.fitQuiz.questions[self.index][@"answers"] allKeys][row - 1]];
        [self.fitQuiz setAnswer:answer forQuestionIndex:self.index];
    }
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* tView = (UILabel*)view;
    
    if (!tView){
        tView = [[UILabel alloc] init];
        
        // Setup label properties - frame, font, colors etc
        [tView setFont:[UIFont fontWithName:@"Trebuchet MS" size:14.0f]];
        [tView setTextColor:self.purpleColor];
    }
    
    // Fill the label text here
    if (row == 0)
    {
        tView.text = @"Select";
    }
    else
    {
        tView.text = [self.fitQuiz.questions[self.index][@"answers"] allValues][row - 1];
    }
    
    return tView;
}

@end
