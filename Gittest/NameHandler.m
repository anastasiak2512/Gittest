//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"


@implementation NameHandler {

}
- (void)say_hello {
    printf("Hello, %s\n", [self.name UTF8String]);
}

- (void)say_bye {
    printf("Bye, %s\n", [self.name UTF8String]);
}


@end