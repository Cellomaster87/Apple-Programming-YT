//
//  main.m
//  Cocoa Pr L51 ViewBased NSTableView
//
//  Created by Michele Galvagno on 13/05/22.
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
    a. add a Table View to the canvas (right now it defaults to View Based, leave it). Change the number of columns to 1.
    b. delete the current cell; drag an "Image & Text Table View Cell"
    c. set heigth of cell to 50, then size of image view to 47x47, then center the Text Field next to it
    d. select the Table Column > Identity Inspector > Identifier=MainCell
    e. select the cell and repeat the same process (MainCell)
    f. add outlet for tableView
 2. AppDelegate.h > add conformance to NSTableViewDataSource and NSTableViewDelegate
 3. AppDelegate.m >
    a. add a mutable array called "_tableContents"
    b. implement the awakeFromNib method to retrieve files and load them into the table view
    c. implement the -numberOfRowsInTableView: method
    d. implemtn the -tableView:viewForTableColumn:row: method
 4. MainMenu.xib
    a. connect the tableView data source and delegate to the AppDelegate 
 
 Lesson 52
 1. MainMenu.xib
    a. add a rounded textured button in the cell, remove the placeholder text, add an NSReveal indicator
    b. set the TableView to allow for multiple selection (Attributes Inspector)
    c. add two buttons "New Row" "Delete" below the table view.
    d. assistant editor: create actions for the three buttons
 2. AppDelegate.m
    a. add an @"filePath" key to the obj dictionary, tied to the filePath object
    b. implement the locateInFinder: action
    c. implement the removeSelectedRows: action
    d. implement the insertNewRow: action
 
 Lesson 53: Working with groups
 
 */
