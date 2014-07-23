//
// Created by AK on 28/02/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "NameHandler.h"
#import "UITableViewCell.h"
#import "UITableView.h"
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


void* foo() {
   return NULL;
}

void referenceNilSample() {
    int *ptr = NULL;

    if (foo()) {
        if (*ptr) {

        }
    }
}
//
//@interface Control: NSObject
//@end
//
//@interface Label: Control
//@end
//
//@interface Button: Control
//@end
//
//@interface RadioButton: Button
//@end
//
//Button *getButton();
//RadioButton *getRadioButton();
//
//void castSimple(bool bar, Control *control) {
//    Button *button = getButton();
//    RadioButton *radioButton = getRadioButton();
//
//    (Label *)control;
//
//    if (bar)
//        control = button;
//    else
//        control = radioButton;
//
//    (Label *)control;
//
//
//
//
//}
//













