//
//  main.m
//  Cocoa Pr L49 NSOutlineView
//
//  Created by Michele Galvagno on 09/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. MainMenu.xib
    a. add two buttons Add, Remove
    b. select Remove button > Attributes Inspector > Key equivalent > Delete key
    c. connect them as actions to OutlineViewController.h
    d. add an outlet for the outline view bc we want to know what was selected
 2. Person.h > add -(void)removeChild:(Person *)p method; Person.m > implement it to remove an object from the children array
 3. OutlineViewController.m >
    a. implement -outlineView:setObjectValue:forTableColumn:byItem: (for when I want to change a value in a cell). Here we need to change the Person object to reflect the change made in the interface. The item: parameter represents the Person object of that change
    b. implement the add method
    c. implement the remove method

 */
