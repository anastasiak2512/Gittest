//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"
#import <AppKit/NSColor.h>

@implementation NameHandler {
         //tt
    //rrr

}

- (void)say_hello {
    printf("Hello, %s\n", [self.name UTF8String]);
}

//ask_question and give_answer
//TODO: second
- (void)ask_question:(NSString *)question {
    printf("%s, %s\n", [question UTF8String], [self.name UTF8String]);
}


/**
* Doc comment
* @param answer
*/
- (void)give_answer:(NSString *)answer {
    //TODO: first
    printf("%s, you answer is: %s\n", [self.name UTF8String], [answer UTF8String]);
}

- (void)say_bye {
    printf("Bye, %s\n", [self.name UTF8String]);

}


@end




















