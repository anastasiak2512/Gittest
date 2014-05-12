//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"
#import "Person.h"
#import "Car.h"
#import "InsuranceCompany.h"

#define MAX_NUM_LEN 16

uint64_t fib(uint32_t x) {
    if (x == 0) {
        return 0;
    } else if (x == 1) {
        return 1;
    } else if (x == 1) {
        return 2;
    } else {
        return fib(x-1) + fib(x-2);
    }
}

void foo() {
    [NSMutableArray arrayWithObject:@1];
    [NSMutableArray arrayWithObjects:@1, @3, [NSMutableArray arrayWithObjects:[NSNumber numberWithFloat:1.23], nil], nil];
    [NSMutableArray arrayWithObjects:@1, @2, @3 count:2]; //NO
    NSMutableArray *array = [NSMutableArray arrayWithObject:@1];

    [array addObject:@1]; //NO
    [array objectAtIndex:1];
    [array objectAtIndexedSubscript:1];
    [array setObject:[NSNumber numberWithChar:'a'] atIndexedSubscript:2];
    [array insertObject: @"Indigo" atIndex: 1];

    id a, b, c, o1, o2, o3, k0, k1, k2, k3;

    [NSArray arrayWithObjects:a, b, c, nil];
    [NSArray arrayWithObjects:a, nil];
    [NSArray arrayWithObjects:[NSArray arrayWithObjects:a, b, c, nil], [NSArray arrayWithObjects:a, b, c, nil], nil];
    [NSDictionary dictionaryWithObjects:@[o1, o2, [NSNumber numberWithInt:123]] forKeys:[NSArray arrayWithObjects:k0, k2, k3, nil]];
    [NSDictionary dictionaryWithObjects:@[o1, o2, o3] forKeys:[NSArray arrayWithObject:k0]];
    [NSDictionary dictionaryWithObjectsAndKeys: o1, k1, o2, k2, nil];
    NSMutableDictionary *dictionary = [NSDictionary dictionaryWithObject:@1 forKey:@3];


    [dictionary setValue:@"df" forKey:@"dfdf"];
    [dictionary setObject:@"object" forKey:@"key"];
    [dictionary setObject:@"df" forKeyedSubscript:@"dfdf"];
    [dictionary objectForKey:@"df"];

    @([[NSArray alloc] count]);
    [NSNumber numberWithInt:a];
    [NSNumber numberWithInt:(a)];
    [NSNumber numberWithInt:123];
    [NSNumber numberWithBool:YES];
    [NSNumber numberWithBool:true];
}

int main(int argc, const char * argv[]) {

    //user_name - user name
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
