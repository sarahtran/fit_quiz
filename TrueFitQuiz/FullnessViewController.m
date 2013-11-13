//
//  FullnessViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "FullnessViewController.h"
#import "FitQuiz.h"
#import "WhichHookViewController.h"

@interface FullnessViewController ()

@end

@implementation FullnessViewController

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
    if ([[segue identifier] isEqualToString:@"whichHookPush"])
    {
        WhichHookViewController *viewController = (WhichHookViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (IBAction)shallowAction:(id)sender
{
    [self.fitQuiz setAnswer:@"s" forQuestionIndex:self.index];
    
    [self.shallowButton setBackgroundColor:self.pinkColor];
    [self.fullButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)fullAction:(id)sender
{
    [self.fitQuiz setAnswer:@"f" forQuestionIndex:self.index];
    
    [self.shallowButton setBackgroundColor:[UIColor whiteColor]];
    [self.fullButton setBackgroundColor:self.pinkColor];
}

@end
