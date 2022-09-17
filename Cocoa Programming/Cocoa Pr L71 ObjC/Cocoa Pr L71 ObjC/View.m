//
//  View.m
//  Cocoa Pr L71 ObjC
//
//  Created by Michele Galvagno on 16/09/22.
//

#import "View.h"

@implementation View
@synthesize backgroundColor;
@synthesize cornerRadius;
@synthesize borderColor;
@synthesize borderWidth;

- (void)setBackgroundColor:(NSColor *)backgroundColor {
    self.needsDisplay = YES;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.cornerRadius = 0;
    self.needsDisplay = YES;
}

- (void)setBorderColor:(NSColor *)borderColor {
    self.needsDisplay = YES;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.borderWidth = 0;
    self.needsDisplay = YES;
}


- (BOOL)wantsUpdateLayer {
    return YES;
}

- (void)updateLayer {
    [super updateLayer];
    
    CALayer *layer = self.layer;
    
    layer.backgroundColor = backgroundColor.CGColor;
    layer.cornerRadius = cornerRadius;
    layer.borderColor = borderColor.CGColor;
    layer.borderWidth = borderWidth;
}

@end
