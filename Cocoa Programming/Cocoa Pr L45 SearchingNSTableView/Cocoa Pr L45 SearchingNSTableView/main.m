//
//  main.m
//  Cocoa Pr L44 SortingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/*!
 1. Create a new Person class and add two properties to it: name and age. In .m file, add the - (id)init method. 
 2. In AppDelegate: create a strong property for the people NSMutableArray and a weak property for an NSTableView; initialise the people's array!
 3. MainMenu.xib:
    a) add an Array Controller to the bench, set its class to Person and add name and age as keys; in Binding Inspector > Content Array > AppDelegate > people
    b) add a Table View, set name and age as column headers, bind the value of the first column to Array Controller > arrangedObjects > name/age
    c) add two buttons Add Remove and bind them to the correspondent methods in the Array Controller
    d) Array Controller > Attributes Inspector > check Auto Rearrange Content
    e) select name column > Attributes Inspector > Sort Key: name; Selector: caseInsensitiveCompare:
        1. other options: Sort Key: name.length, Selector: compare:
    f) remove those keys and move to
 4. AppDelegate.m
    a) in applicationDidFinishLaunching, implement the setSortDescriptors method of tableView to activate this programmatically
 */
