//
//  DropView.m
//  Cocoa Pr L24-6 Storyboard
//
//  Created by Michele Galvagno on 16/04/22.
//

#import "DropView.h"

@implementation DropView
@synthesize image;

- (instancetype)initWithFrame:(NSRect)frameRect {
    if (self = [super initWithFrame:frameRect]) {
        [self registerForDraggedTypes:[NSArray arrayWithObject:NSPasteboardTypeURL]];
        NSLog(@"Frame Initialised");
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    if (!image) {
        [[NSColor systemRedColor] set];
        NSRectFill(dirtyRect);
    } else {
        [image drawInRect:dirtyRect fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
    }
}

// MARK: - NSDraggingDestination methods
- (NSDragOperation)draggingEntered:(id<NSDraggingInfo>)sender {
    if ([NSImage canInitWithPasteboard:[sender draggingPasteboard]] && [sender draggingSourceOperationMask] & NSDragOperationCopy) {
        NSLog(@"ENTERED");
        return NSDragOperationCopy;
    }
    NSLog(@"NOT ENTERED");
    return NSDragOperationNone;
}

/*
- (NSDragOperation)draggingUpdated:(id<NSDraggingInfo>)sender {
    NSLog(@"DRAGGING");
    return NSDragOperationCopy;
}

- (void)draggingEnded:(id<NSDraggingInfo>)sender {
    NSLog(@"ENDED");
}

- (void)draggingExited:(id<NSDraggingInfo>)sender {
    NSLog(@"EXITED");
}
 */

// MARK: - Drag Operation methods
- (BOOL)prepareForDragOperation:(id<NSDraggingInfo>)sender {
    return YES;
}

-(BOOL)performDragOperation:(id<NSDraggingInfo>)sender {
    if ([NSImage canInitWithPasteboard:[sender draggingPasteboard]]) {
        NSImage *newImage = [[NSImage alloc] initWithPasteboard:[sender draggingPasteboard]];
        [self setImage:newImage];
        return YES;
    }
    return YES;
}

- (void)concludeDragOperation:(id<NSDraggingInfo>)sender {
    [self setNeedsDisplay:YES];
}

@end
