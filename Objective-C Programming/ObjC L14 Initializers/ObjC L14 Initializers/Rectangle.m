//
//  Rectangle.m
//  ObjC L14
//
//  Created by Michele Galvagno on 22/12/21.
//

#import "Rectangle.h"

@implementation Rectangle

- (void)setHeight:(int)newHeight {
    height = newHeight;
}

- (void)setWidth:(int)newWidth {
    width = newWidth;
}

- (void)setHeight:(int)newHeight width:(int)newWidth {
    height = newHeight;
    width = newWidth;
}

- (int)height {
    return height;
}

- (int)width {
    return width;
}

- (NSString *)description {
    return @"This is a rectangle class";
}

@end