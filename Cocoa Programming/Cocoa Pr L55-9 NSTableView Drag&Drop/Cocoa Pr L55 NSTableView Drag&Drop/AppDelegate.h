//
//  AppDelegate.h
//  Cocoa Pr L53 Groups
//
//  Created by Michele Galvagno on 17/05/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate>

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)insertNewRow:(id)sender;
- (IBAction)removeSelectedRows:(id)sender;
- (IBAction)locateInFinder:(id)sender;


@end

