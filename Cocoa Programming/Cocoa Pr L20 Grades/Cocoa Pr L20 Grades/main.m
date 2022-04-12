//
//  main.m
//  Cocoa Pr L20 Grades
//
//  Created by Michele Galvagno on 12/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. delete the text field in MainMenu.xib
 2. add two buttons (Add and Remove) and a tableView with Name and Grade (Content mode > Cell based!)
 3. create an NSObject subclass called Assignment
 4. in Assignment.h create NSString *name and int grade; then @property both, (copy) first
 5. in Assignment.m @synthesize both properties and create a default initialiser.
 6. in Document.h create an NSMutableArray *assignments property, set it to (copy); @synthesize it in Document.m and initialise it with alloc-init.
 7. in Document.xib, drag an Array Controller to the workbench; select it, Attributes Inspector, Class = Assignment, Keys = name & grade
 8. Bindings Inspector = bind to File's Owner > Model = assignments
 9. Select each column of table view > Bindings Inspector > bind to Array Controller > left = name / right = grade
 10. ctrl-click on Array Controller > drag from add to Add button & from remove to Remove button
 */
