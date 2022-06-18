//
//  RandomColor.m
//  Cocoa Pr L66 ObjC
//
//  Created by Michele Galvagno on 18/06/22.
//

#import "RandomColor.h"

@implementation NSColor (RandomColor)
- (NSColor *)randomColor {
    CGFloat r = drand48();
    CGFloat g = drand48();
    CGFloat b = drand48();
    CGFloat alpha = 1.0;
    
    return [NSColor colorWithRed:r green:g blue:b alpha:alpha];
}

@end
