//
//  BandSizeViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "BandSizeViewController.h"
#import "FitQuiz.h"
#import "CupSizeViewController.h"

@interface BandSizeViewController ()

@end

@implementation BandSizeViewController

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
    if ([[segue identifier] isEqualToString:@"cupSizePush"])
    {
        CupSizeViewController *viewController = (CupSizeViewController *)segue.destinationViewController;;
        viewController.fitQuiz = self.fitQuiz;
    }
}


@end
