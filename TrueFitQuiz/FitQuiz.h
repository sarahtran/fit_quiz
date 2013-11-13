//
//  FitQuiz.h
//  TrueFitQuiz
//
//  Created by Sarah Tran on 11/9/13.
//  Copyright (c) 2013 Sarah Tran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FitQuiz : NSObject

@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, strong) NSMutableDictionary *answers;

- (id)initWithFitQuiz:(NSString *)plistName;

- (void)setAnswer:(NSString *)answer forQuestionIndex:(NSUInteger)index;
- (void)removeAnswerForQuestionIndex:(NSUInteger)index;

@end
