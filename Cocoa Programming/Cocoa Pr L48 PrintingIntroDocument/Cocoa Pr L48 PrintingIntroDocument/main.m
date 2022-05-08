//
//  main.m
//  Cocoa Pr L48 PrintingIntroDocument
//
//  Created by Michele Galvagno on 08/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. File > Print sends a printDocument: call to the First Responder. It sends a message up the chain, it doesn't actually call the full method.
 2. add a CoolView:NSView class to the project. Implement drawRect in there.
 3. in Document.xib, add a CustomView:CoolView
 4. Assistant Editor > outlet to Document.h + import "CoolView.h"
 5. in Document.m, implement -printOperationWithSettings:error: returning +printOperationWithView:self.coolView
 6. Project > Signing & Capabilities > App Sandbox > check Printing
 
 */
