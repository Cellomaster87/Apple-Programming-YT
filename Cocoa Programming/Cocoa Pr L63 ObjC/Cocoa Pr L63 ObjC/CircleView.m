//
//  CircleView.m
//  Cocoa Pr L63 ObjC
//
//  Created by Michele Galvagno on 10/06/22.
//

#import "CircleView.h"

@implementation CircleView

- (BOOL)wantsUpdateLayer {
    return YES;
}

- (void)updateLayer {
    self.layer.backgroundColor = NSColor.whiteColor.CGColor;
    self.layer.cornerRadius = (self.frame.size.width)/2.0;
}

- (void)removeCircle:(NSView *)circle {
    [circle removeFromSuperview];
}

@end
