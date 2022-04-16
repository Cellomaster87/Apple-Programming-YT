//
//  main.m
//  Cocoa Pr L27 MouseEvents
//
//  Created by Michele Galvagno on 16/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Drag a custom view out, create a DrawingView class and assign it to the view
 2. Create two NSPoint properties startPoint and endPoint (they are not classes, no need to synthesize)
 3. in drawRect, set the color to the red and fill the frame with it
 4. implement mouseDown, setting startPoint = [event locationInWindow], and mouseDragged, setting endPoint to the same, and asking the display to redraw itself
 5. add [[NSColor systemBlueColor] set];
 [[NSBezierPath bezierPathWithRect:NSMakeRect(startPoint.x, startPoint.y, endPoint.x-startPoint.x, endPoint.y-startPoint.y)] fill]; to drawRect
 6. substitute code in mouseDown / mouseDragging = NSPoint point = [event locationInWindow]; startPoint/endPoint = [self convertPoint:point fromView:nil];
 
 */
