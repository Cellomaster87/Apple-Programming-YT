//
//  AppDelegate.h
//  Cocoa Pr L44 SortingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *tableView;

@property  NSMutableArray *people;

@end

