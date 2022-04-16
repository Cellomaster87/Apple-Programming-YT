//
//  DropView.m
//  Cocoa Pr L24-6 Drag-n-Drop
//
//  Created by Michele Galvagno on 15/04/22.
//

#import "DropView.h"

@implementation DropView
@synthesize image;

- (id)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        [self registerForDraggedTypes:[NSArray arrayWithObject:NSPasteboardTypeURL]];
//       it was: [NSImage imagePasteboardTypes]
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    // dirtyRect is the region that needs to be redrawn
    [super drawRect:dirtyRect];
    
    // if we have no image, draw the scene red
    if (!image) {
        [[NSColor systemRedColor] set];
        NSRectFill(dirtyRect);
    } else {
        // NSZeroRect = we want the entire image
        // fraction = alpha slider (opacity)
        [image drawInRect:dirtyRect fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
    }
}

// MARK: - NSDraggingDestination methods

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
    // this asks the view to be redrawn
    [self setNeedsDisplay:YES];
}

// NSDragOperation is an enum
// id<NSDraggingInfo> is what we are dragging around
- (NSDragOperation)draggingEntered:(id<NSDraggingInfo>)sender {
    if ([NSImage canInitWithPasteboard:[sender draggingPasteboard]] && [sender draggingSourceOperationMask] & NSDragOperationCopy) {
        NSLog(@"ENTERED");
        return NSDragOperationCopy;
    }
    return NSDragOperationNone;
}

// Implemented when you drag your image around in the view
- (NSDragOperation)draggingUpdated:(id<NSDraggingInfo>)sender {
    NSLog(@"DRAGGING");
    return NSDragOperationCopy;
}

// When you drag and let go, or drag and it ends inside the view
- (void)draggingEnded:(id<NSDraggingInfo>)sender {
    NSLog(@"ENDED");
}

- (void)draggingExited:(id<NSDraggingInfo>)sender {
    NSLog(@"EXITED");
}


@end
