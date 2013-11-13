//
//  SymmetryViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "SymmetryViewController.h"
#import "FitQuiz.h"
#import "SpillageViewController.h"

@interface SymmetryViewController ()

@end

@implementation SymmetryViewController

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
    if ([[segue identifier] isEqualToString:@"spillagePush"])
    {
        SpillageViewController *viewController = (SpillageViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (IBAction)leftAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Left" forQuestionIndex:self.index];
    
    [self.leftButton setBackgroundColor:self.pinkColor];
    [self.rightButton setBackgroundColor:[UIColor whiteColor]];
    [self.sameButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)rightAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Right" forQuestionIndex:self.index];
    
    [self.leftButton setBackgroundColor:[UIColor whiteColor]];
    [self.rightButton setBackgroundColor:self.pinkColor];
    [self.sameButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)sameAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Same" forQuestionIndex:self.index];
    
    [self.leftButton setBackgroundColor:[UIColor whiteColor]];
    [self.rightButton setBackgroundColor:[UIColor whiteColor]];
    [self.sameButton setBackgroundColor:self.pinkColor];
}

@end
