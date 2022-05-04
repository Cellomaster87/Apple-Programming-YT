//
//  AppDelegate.h
//  Cocoa Pr L45 SearchingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSArrayController *arrayController;

@property  NSMutableArray *people;

@end

