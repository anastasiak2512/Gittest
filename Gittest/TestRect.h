//
// Created by AK on 15/03/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TestRect : NSObject
{
    float     x, y;
    float     width;
    float     height;
    BOOL      isFilled;
}
+ newTestRect;
- (void) display;
- (float) width;
- (float) height;
- (float) area;
- (void) setWidth: (float) theWidth;
- (void) setHeight: (float) theHeight;
- (void) setX: (float) theX y: (float) theY;
@end
