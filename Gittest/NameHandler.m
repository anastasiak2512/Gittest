//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"


@implementation NameHandler {
         //tt
    //rrr
}
- (void)say_hello {
    printf("Hello, %s\n", [self.name UTF8String]);
}

- (void)ask_question:(NSString *)question {
    printf("%s, %s\n", [question UTF8String], [self.name UTF8String]);
}


- (void)give_answer:(NSString *)answer {
    printf("%s, you answer is: %s\n", [self.name UTF8String], [answer UTF8String]);
}

- (void)say_bye {
    printf("Bye, %s\n", [self.name UTF8String]);
}


@end
