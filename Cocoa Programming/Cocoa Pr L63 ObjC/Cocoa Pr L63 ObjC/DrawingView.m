//
//  DrawingView.m
//  Cocoa Pr L63 ObjC
//
//  Created by Michele Galvagno on 10/06/22.
//

#import "DrawingView.h"
#import "CircleView.h"

@implementation DrawingView

- (void)addCircle:(CircleView *)circle {
    [self addSubview:circle];
    [self.undoManager registerUndoWithTarget:self selector:@selector(removeCircle:) object:circle];
    [self.undoManager setActionName:@"Add Circle"];
}

- (void)removeCircle:(CircleView *)circle {
    [circle removeFromSuperview];
    [self.undoManager registerUndoWithTarget:self selector:@selector(addCircle:) object:circle];
    [self.undoManager setActionName:@"Remove Circle"];
}

- (void)mouseDown:(NSEvent *)event {
    NSPoint point = event.locationInWindow;
    NSUInteger flags = [event modifierFlags] & NSEventModifierFlagDeviceIndependentFlagsMask;
    
    if (flags == NSEventModifierFlagOption) {
        NSView *view = [self hitTest:point];
        [self removeCircle:(CircleView *)view];
    } else {
        CircleView *circle = [[CircleView alloc] initWithFrame:NSMakeRect(point.x-15, point.y-15, 30, 30)];
        [self addCircle:circle];
    }
}

- (BOOL)wantsUpdateLayer {
    return YES;
}

- (void)updateLayer {
    self.layer.backgroundColor = NSColor.blackColor.CGColor;
}
    
@end
