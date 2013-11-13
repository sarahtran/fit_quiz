//
//  ShapeViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "ShapeViewController.h"
#import "FitQuiz.h"
#import "BrandViewController.h"

@interface ShapeViewController ()

@end

@implementation ShapeViewController

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
    if ([[segue identifier] isEqualToString:@"brandPush"])
    {
        BrandViewController *viewController = (BrandViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}

- (IBAction)rouAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Rou" forQuestionIndex:self.index];
    
    [self.rouButton setBackgroundColor:self.pinkColor];
    [self.botButton setBackgroundColor:[UIColor whiteColor]];
    [self.sidButton setBackgroundColor:[UIColor whiteColor]];
    [self.bosButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)botAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Bot" forQuestionIndex:self.index];
    
    [self.rouButton setBackgroundColor:[UIColor whiteColor]];
    [self.botButton setBackgroundColor:self.pinkColor];
    [self.sidButton setBackgroundColor:[UIColor whiteColor]];
    [self.bosButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)sidAction:(id)sender
{
    [self.fitQuiz setAnswer:@"Sid" forQuestionIndex:self.index];
    
    [self.rouButton setBackgroundColor:[UIColor whiteColor]];
    [self.botButton setBackgroundColor:[UIColor whiteColor]];
    [self.sidButton setBackgroundColor:self.pinkColor];
    [self.bosButton setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)bosAction:(id)sender
{
    [self.fitQuiz setAnswer:@"BoS" forQuestionIndex:self.index];
    
    [self.rouButton setBackgroundColor:[UIColor whiteColor]];
    [self.botButton setBackgroundColor:[UIColor whiteColor]];
    [self.sidButton setBackgroundColor:[UIColor whiteColor]];
    [self.bosButton setBackgroundColor:self.pinkColor];
}

@end
