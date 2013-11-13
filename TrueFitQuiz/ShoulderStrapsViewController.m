//
//  ShoulderStrapsViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "ShoulderStrapsViewController.h"
#import "FitQuiz.h"
#import "ShapeViewController.h"

@interface ShoulderStrapsViewController ()

@end

@implementation ShoulderStrapsViewController

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
    if ([[segue identifier] isEqualToString:@"shapePush"])
    {
        ShapeViewController *viewController = (ShapeViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (IBAction)slipAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Slip" forQuestionIndex:self.index];
    
    [self.slipButton setBackgroundColor:self.pinkColor];
    [self.digButton setBackgroundColor:[UIColor whiteColor]];
    [self.fineButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)digAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Dig" forQuestionIndex:self.index];
    
    [self.slipButton setBackgroundColor:[UIColor whiteColor]];
    [self.digButton setBackgroundColor:self.pinkColor];
    [self.fineButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)fineAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Fine" forQuestionIndex:self.index];
    
    [self.slipButton setBackgroundColor:[UIColor whiteColor]];
    [self.digButton setBackgroundColor:[UIColor whiteColor]];
    [self.fineButton setBackgroundColor:self.pinkColor];
}

@end
