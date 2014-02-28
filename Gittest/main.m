//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"

int main(int argc, const char * argv[]) {
    NameHandler *user_name = [[NameHandler alloc] init];

    [user_name setName:@"Gituser"];
    [user_name say_hello];
    [user_name say_bye];
    return 0;
}