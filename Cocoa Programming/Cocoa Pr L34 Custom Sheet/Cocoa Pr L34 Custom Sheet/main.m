//
//  main.m
//  Cocoa Pr L34 Custom Sheet
//
//  Created by Michele Galvagno on 22/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Create AppController class + Object on workbench
 2. in AppController.h create a property for the sheet, and two actions for showing and closing the sheet. In IB, connect activateSheet to a button
 3. Create a new Window XIB called Sheet, add a button to it (Close); in Attributes Insp., uncheck Title Bar, Visible at Launch, check Release when closed. Set File's Owner class to AppController
 4. connect sheet and closeSheet outlets/action
 5. in AppController.m, @synthesize sheet;
 6. in the activateSheet, set to display the XIB if there is no sheet, then set the code for showing the sheet
 7. implement the closeSheet method as well
 
 */
