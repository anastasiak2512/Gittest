//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"

#define MAX_NUM_LEN 16

//Test Unreachable code
int64_t fib(uint32_t x) {
    if (x == 0)
        return 0;
    else if (x == 1)
        return 1;
    else if (x == 1)
        return 2;
    else
        return fib(x - 2) + fib(x - 1);
}

int main(int argc, const char * argv[]) {
    NameHandler *user_name = nil;//[[NameHandler alloc] init];

    char buf[MAX_NAME_LENGTH];
    printf("What's your name?\n");
    fscanf(stdin, "%s", buf);

    [user_name setName:[NSString stringWithUTF8String:buf]];
    [user_name say_hello];

    char num_buf[MAX_NUM_LEN];
    [user_name ask_question:@"Enter a number"];
    fscanf(stdin, "%s", num_buf);

    NSNumberFormatter *myNumFormatter = [[NSNumberFormatter alloc] init];
    [myNumFormatter setLocale:[NSLocale currentLocale]];
    [myNumFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [myNumFormatter setNumberStyle:NSNumberFormatterDecimalStyle];

    NSNumber *tempNum = [myNumFormatter numberFromString:[NSString stringWithUTF8String:num_buf]];
    int squared = [tempNum intValue] * [tempNum intValue];
    [user_name give_answer:[[NSNumber numberWithInteger:squared] stringValue]];

    [user_name say_bye];
    return 0;
}