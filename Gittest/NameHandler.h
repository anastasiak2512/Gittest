//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MAX_NAME_LENGTH 128

@interface NameHandler : NSObject
@property (assign) NSString *name;
- (void)say_hello;

- (void)ask_question:(NSString *)question;

- (void)give_answer:(NSString *)answer;

- (void)say_bye;
@end