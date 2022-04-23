//
//  DrawingView.m
//  Cocoa Pr L27 MouseEvents
//
//  Created by Michele Galvagno on 16/04/22.
//

#import "DrawingView.h"

@implementation DrawingView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [[NSColor systemRedColor] set];
    NSRectFill(dirtyRect);
    
    [[NSColor systemBlueColor] set];
    [[NSBezierPath bezierPathWithRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x-startPoint.x, endPoint.y-startPoint.y)] fill];
}

// MARK: - Mouse Events methods
- (void)mouseDown:(NSEvent *)event {
    // NSEvent represents any keyboard or mouse event that happens
//    startPoint = [event locationInWindow];
    NSPoint point = [event locationInWindow];
    startPoint = [self convertPoint:point fromView:nil]; // nil = use window-based coordinate system
}

- (void)mouseDragged:(NSEvent *)event {
//    endPoint = [event locationInWindow];
    NSPoint point = [event locationInWindow];
    endPoint = [self convertPoint:point fromView:nil];
    [self setNeedsDisplay:YES];
}

@end
