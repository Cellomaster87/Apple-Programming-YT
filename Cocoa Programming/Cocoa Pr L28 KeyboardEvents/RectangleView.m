//
//  RectangleView.m
//  Cocoa Pr L28 KeyboardEvents
//
//  Created by Michele Galvagno on 17/04/22.
//

#import "RectangleView.h"

@implementation RectangleView
- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        isOval = YES;
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [[NSColor systemRedColor] set];
    NSRectFill(dirtyRect);
    
    [[NSColor systemBlueColor] set];
    if (isOval) {
        [[NSBezierPath bezierPathWithOvalInRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x-startPoint.x, endPoint.y-startPoint.y)] fill];
    } else {
        [[NSBezierPath bezierPathWithRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x-startPoint.x, endPoint.y-startPoint.y)] fill];
    }
}

// MARK: - Mouse Events methods
- (void)mouseDown:(NSEvent *)event {
    NSPoint point = [event locationInWindow];
    startPoint = [self convertPoint:point fromView:nil];
}

- (void)mouseDragged:(NSEvent *)event {
    NSPoint point = [event locationInWindow];
    endPoint = [self convertPoint:point fromView:nil];
    [self setNeedsDisplay:YES];
}

// MARK: - First Responder methods
- (BOOL)acceptsFirstResponder {
    return YES;
}

// MARK: - Keyboard Events methods
- (void)keyDown:(NSEvent *)event {
    if ([[event characters] isEqualToString:@"o"]) {
        isOval = !isOval; 
    }
    [self setNeedsDisplay:YES];
}

@end
