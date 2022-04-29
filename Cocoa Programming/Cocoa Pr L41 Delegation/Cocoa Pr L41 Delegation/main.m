//
//  main.m
//  Cocoa Pr L41 Delegation
//
//  Created by Michele Galvagno on 29/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 DELEGATION:
 The View doesn't know what data is contained. It simply requests it.
 The View asks what should be displayed, the Controller answers.
 1. Main.xib:
    a) +horizontal slider, min:1 max:50 current:10 check:continuous
    b) Custom View above it
 2. Create SquareView:NSView and AppController:NSObject class
 3. Main.xib: set these classes for the Custom View and for the Object in the workbench
 4. SquareView.h:
    a) create new @protocol for who needs to be the delegate. Add the method to return the number of squares in the view, passing a SquareView as a parameter. Add an @class SquareView after #import to notify the compiler that such an object exists
    b) create a weak property of a type that conforms to the protocol we just created and call it delegate
    c) synthesise it in SquareView.m
 5. AppController.h:
    a) add an @class SquareView after the #import; >>> #import SquareView.h
    b) add an IBOutlet of type SquareView
    c) add an IBAction changeSquareCount
    d) go to MainMenu.xib and connect outlet and action to view and slider
    e) conform to SquareViewDelegate
 6. AppController.m:
    a) add an int squareCount; (with underscore?)
    b) implement the changeSquareCount method by setting the squareCount variable to the sender's integer value; setNeedsDisplay for squareView to YES.
    c) synthesize SquareView
    d) implement the awakeFromNib method by setting the delegate of square view to self; squareCount = 10 (better to create an outlet for the slider, but this is faster here); setNeedsDisplay to YES for the squareView.
    e) implement the delegate method by returning squareCount
 7. SquareView.m
    a) set the color to red
    b) create an integer storing the return value of the delegate method
    c) create a for loop to get coordinates and to fill a rectangle
 */
