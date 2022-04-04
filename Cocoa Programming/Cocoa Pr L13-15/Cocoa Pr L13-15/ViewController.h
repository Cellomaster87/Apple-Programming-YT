//
//  ViewController.h
//  Cocoa Pr L13-15
//
//  Created by Michele Galvagno on 04/04/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDataSource>
@property (nonatomic, weak) IBOutlet NSTableView *tableView;

- (IBAction)add:(id)sender;

@end

