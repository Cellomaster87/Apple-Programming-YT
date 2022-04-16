//
//  main.m
//  Cocoa Pr L24-6 Drag-n-Drop
//
//  Created by Michele Galvagno on 15/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 COCOA DRAG and DROP
 (1/3)
 1. Drag and expand a Custom View on the canvas, then pin it to the four corners and set it to expand as the window resizes (Size Inspector)
 2. Create a new Cocoa class, subclass of NSView, call it DropView, and set it as the class for our Custom View in the XIB
 3. in DropView.h, create an NSImage *image + @property (retain); synthesize it in DropView.m
 4. in DropView.h, conform to the <NSDraggingDestination> protocol
 5. in DropView.m, add the initWithFrame method, with the [self registerForDraggedTypes:[NSImage imageTypes]] call inside of the if (self)
 
 (2/3)
 How to detect different events that go around in your view
 1. in DropView.m, implement the draggingEntered method to check whether the object we are dragging can be seen as an image.
 2. implement the draggingUpdated method, just to see that it works
 
 (3/3)
 1. Replace the argument of registerForDraggedTypes with [NSArray arrayWithObject:NSPasteboardTypeURL]
 2. implement the prepareForDragOperation:sender method, return YES
 3. implement the performDragOperation method, NSImage *newImage = [[NSImage alloc] initWithPasteboard: [sender draggingPasteboard]]; [self setImage:newImage];
 4. implement the concludeDragOperation method, [self setNeedsDisplay:YES]
 5. implement the drawRect method 
 */
