//
//  AppDelegate.m
//  Cocoa Pr L44 SortingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        _people = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_tableView setSortDescriptors:@[
        [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(caseInsensitiveCompare:)],
        [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES]
    ]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
