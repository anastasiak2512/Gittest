//
// Created by AK on 15/03/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import "TestRect.h"


@implementation TestRect {

}

+ newTestRect
{
    TestRect * rect = [[TestRect alloc] init];

    [rect setWidth:  1.0f];
    [rect setHeight: 1.0f];
    [rect setX: 0.0f y: 0.0f];

    return rect;
}

- (float) width
{
    return width;
}

- (float) height
{
    return height;
}

- (float) area
{
    return [self width] * [self height];
}

- (void) setWidth: (float) theWidth
{
    width = theWidth;
}

- (void) setHeight: (float) theHeight
{
    height = theHeight;
}

- (void) setX: (float) theX y: (float) theY
{
    x = theX;
    y = theY;
}


@end
