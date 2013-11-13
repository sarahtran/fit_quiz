//
//  FitQuiz.m
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import "FitQuiz.h"

@interface FitQuiz()
- (NSString *)questionKeyForIndex:(NSUInteger)index;
@end

@implementation FitQuiz

- (id)initWithFitQuiz:(NSString *)plistName
{
    if ((self = [super init]))
    {
        NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        self.questions = [NSArray arrayWithContentsOfFile:plistCatPath];
        self.answers = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (NSString *)questionKeyForIndex:(NSUInteger)index
{
    return self.questions[index][@"question_key"];
}

- (void)setAnswer:(NSString *)answer forQuestionIndex:(NSUInteger)index
{
    NSString *questionCode = [NSString stringWithFormat:@"%@", [self questionKeyForIndex:index]];
    [self.answers setObject:answer forKey:questionCode];
    NSLog(@"%@", self.answers);
}

- (void)removeAnswerForQuestionIndex:(NSUInteger)index
{
    NSString *questionCode = [NSString stringWithFormat:@"%@", [self questionKeyForIndex:index]];
    [self.answers removeObjectForKey:questionCode];
    NSLog(@"%@", self.answers);
}

@end
