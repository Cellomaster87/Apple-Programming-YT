//
//  main.m
//  Cocoa Pr L60 QuickLookPreviewPanel
//
//  Created by Michele Galvagno on 03/06/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. AppDelegate.m
    a. in the @interface, add conformance to NSTableViewDataSource and NSTableViewDelegate; then add two properties, one for a tableView and one for the files
    b. implement the -applicationDidFinishLaunching: method, creating an NSURL, an NSFileManager, then setting the files property to be the manager's conternts of the directory at URL, then reloading the table view's data
    c. implement the -numberOfRowsInTableView: method
    d. implement the -tableView:viewForTableColumn:row: method
 2. in MainMenu.xib
    a. add a TableView, set it to one column
    b. right click on AppDelegate object, then set the delegate and data source to the table view, plus connect the tableView outlet
 3. from the Project file, add a the Quartz.framework and #import <Quartz/Quartz.h> in AppDelegate.m
 4. Create a new QuickLookTableView: TableView class
 5. in QuickLookTableView.h
    a. create the QuickLookTableViewDelegate protocol
    b. add a qlDelegate property
 6. in QuickLookTableView.m
    a. implement the -keyDown: method
 7. MainMenu.xib
    a. set the TableView class to be QuickLookTableView
    b. connect the qlDelegate outlet to the AppDelegate
 8. AppDelegate.m
    a. import "QuickLookTableView.h"
    b. add conformance to the QuickLookTableViewDelegate protocol and add the method's stub
    c. implement the -didPressSpacebarForTableView: method
    d. add conformance to QLPreviewPanelDataSource
    e. implement the -numberOfPreviewItemsInPreviewPanel: method
    f. implement the -previewPanel:previewItemAtIndex: method
    g. implement the -acceptsPreviewPanelControl: method
    h. implement the -beginPreviewPanelControl: method
    i. implement the -endPreviewPanelControl: method
    j. add conformance to the QLPreviewPanelDelegate protocol; in -beginPreviewPanelControl:, set self to be the panel delegate; in -endPreviewPanelControl:, set nil to be the panel delegate
    k. implement the -previewPanel:handleEvent: method
    m. implement the -tableViewSelectionDidChange: method
 
 */
