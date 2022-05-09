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
 Displays data in a hierarchy
 1. MainMenu.xib
    a) add an Outline View, expand it, change the Table View to be Cell Based
 2. Create a Person:NSObject. Add a property for name, one for children, one for age, then an init method and a method to add children.
 3. in Person.m implement the initWithName method, a general init method and the addChild method.
 4. Create an OutlineViewController:NSObject. Add an NSMutableArray object for the people (list of the top level people). Add conformance the NSOutlineViewDataSource and import Person.h
 5. OutlineViewController.m implement the init method.
    a) implement the -outlineView:numberOfChildrenOfItem: | -outlineView:isItemExpandable: | -outlineView:child:ofItem: | -outlineView:objectValueForTableColumn:byItem:
 6. MainMenu.xib,
    a) give an identifier to the different columns of the table view; drag a Number Formatter on the second column's cell.
    b) add an Object to the workbench, connect the Outline View's data source outlet to it.
 */
