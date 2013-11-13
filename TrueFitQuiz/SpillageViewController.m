//
//  SpillageViewController.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "SpillageViewController.h"
#import "FitQuiz.h"

@interface SpillageViewController ()
- (void)setSpillage;
@end

@implementation SpillageViewController

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
    self.cleavage = NO;
    self.underarms = NO;
    self.back = NO;
    self.sides = NO;
    self.noSpills = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setSpillage
{
    NSMutableArray *spillage = [[NSMutableArray alloc] init];
    if (self.cleavage)
    {
        [spillage addObject:@"BustC"];
    }
    if (self.underarms)
    {
        [spillage addObject:@"BustU"];
    }
    if (self.back)
    {
        [spillage addObject:@"BustB"];
    }
    if (self.sides)
    {
        [spillage addObject:@"BustS"];
    }
    if (self.noSpills)
    {
        [spillage addObject:@"NoBust"];
    }
    
    [self.fitQuiz setAnswer:[spillage componentsJoinedByString:@", "] forQuestionIndex:self.index];
}

- (IBAction)cleavageAction:(id)sender
{
    self.cleavage = !self.cleavage;
    
    if (self.cleavage)
    {
        self.noSpills = NO;
        [self.cleavageButton setBackgroundColor:self.pinkColor];
        [self.noSpillsButton setBackgroundColor:[UIColor whiteColor]];
    }
    else
    {
        [self.cleavageButton setBackgroundColor:[UIColor whiteColor]];
    }
    
    [self setSpillage];
}

- (IBAction)underarmsAction:(id)sender
{
    self.underarms = !self.underarms;
    
    if (self.underarms)
    {
        self.noSpills = NO;
        [self.underarmsButton setBackgroundColor:self.pinkColor];
        [self.noSpillsButton setBackgroundColor:[UIColor whiteColor]];
    }
    else
    {
        [self.underarmsButton setBackgroundColor:[UIColor whiteColor]];
    }
    
    [self setSpillage];
}

- (IBAction)backAction:(id)sender
{
    self.back = !self.back;
    
    if (self.back)
    {
        self.noSpills = NO;
        [self.backButton setBackgroundColor:self.pinkColor];
        [self.noSpillsButton setBackgroundColor:[UIColor whiteColor]];
    }
    else
    {
        [self.backButton setBackgroundColor:[UIColor whiteColor]];
    }
    
    [self setSpillage];
}

- (IBAction)sidesAction:(id)sender
{
    self.sides = !self.sides;
    
    if (self.sides)
    {
        self.noSpills = NO;
        [self.sidesButton setBackgroundColor:self.pinkColor];
        [self.noSpillsButton setBackgroundColor:[UIColor whiteColor]];
    }
    else
    {
        [self.sidesButton setBackgroundColor:[UIColor whiteColor]];
    }
    
    [self setSpillage];
}

- (IBAction)noSpillsAction:(id)sender
{
    self.noSpills = !self.noSpills;
    
    if (self.noSpills)
    {
        [self.noSpillsButton setBackgroundColor:self.pinkColor];
        
        self.cleavage = NO;
        self.underarms = NO;
        self.back = NO;
        self.sides = NO;
        [self.cleavageButton setBackgroundColor:[UIColor whiteColor]];
        [self.underarmsButton setBackgroundColor:[UIColor whiteColor]];
        [self.backButton setBackgroundColor:[UIColor whiteColor]];
        [self.sidesButton setBackgroundColor:[UIColor whiteColor]];
    }
    else
    {
        [self.noSpillsButton setBackgroundColor:[UIColor whiteColor]];
    }
    
    [self setSpillage];
}

@end
