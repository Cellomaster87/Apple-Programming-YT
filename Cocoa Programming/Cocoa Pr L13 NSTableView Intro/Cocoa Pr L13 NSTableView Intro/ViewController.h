//
//  ViewController.h
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
//

#import <Cocoa/Cocoa.h>

/**
 Written in full as if connected directly from the Storyboard
 Connect the Table View to the property *tableView and the Add button to the IBAction add.
 
 We need to conform to a specific protocol to be able to use the Table View.
 Add conformance to <NSTableViewDataSource>
 Add two methods below (1) and (2) for number of rows and for data for row
 
 The identifier is no longer in the Attributes inspector, rather in the Identity inspector
 In Storyboard connect the data source for the table view to the ViewController
 */

@interface ViewController : NSViewController <NSTableViewDataSource>

@property (strong) IBOutlet NSTableView *tableView;

- (IBAction)add:(id)sender;


@end

