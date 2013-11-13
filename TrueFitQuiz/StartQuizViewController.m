//
//  StartQuizViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "StartQuizViewController.h"
#import "FitQuiz.h"
#import "ShoulderStrapsViewController.h"

@interface StartQuizViewController ()

@end

@implementation StartQuizViewController

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
    self.fitQuiz = [[FitQuiz alloc] initWithFitQuiz:@"fitQuiz"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"startModal"]) {
        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        ShoulderStrapsViewController *viewController = [navController.viewControllers objectAtIndex:0];
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
