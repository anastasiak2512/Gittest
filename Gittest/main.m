//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"

#define MAX_NUM_LEN 16

int main(int argc, const char * argv[]) {
    NameHandler *user_name = [[NameHandler alloc] init];

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
