//
//  WhichHookViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "WhichHookViewController.h"
#import "FitQuiz.h"
#import "SymmetryViewController.h"

@interface WhichHookViewController ()

@end

@implementation WhichHookViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"symmetryPush"])
    {
        SymmetryViewController *viewController = (SymmetryViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (IBAction)tightestAction:(id)sender
{
    [self.fitQuiz setAnswer:@"TightestHook" forQuestionIndex:self.index];
    
    [self.tightestLabel setBackgroundColor:self.pinkColor];
    [self.middleLabel setBackgroundColor:[UIColor whiteColor]];
    [self.loosestLabel setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)middleAction:(id)sender
{
    [self.fitQuiz setAnswer:@"MiddleHook" forQuestionIndex:self.index];
    
    [self.tightestLabel setBackgroundColor:[UIColor whiteColor]];
    [self.middleLabel setBackgroundColor:self.pinkColor];
    [self.loosestLabel setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)loosestAction:(id)sender
{
    [self.fitQuiz setAnswer:@"LoosestHook" forQuestionIndex:self.index];
    
    [self.tightestLabel setBackgroundColor:[UIColor whiteColor]];
    [self.middleLabel setBackgroundColor:[UIColor whiteColor]];
    [self.loosestLabel setBackgroundColor:self.pinkColor];
}

@end
