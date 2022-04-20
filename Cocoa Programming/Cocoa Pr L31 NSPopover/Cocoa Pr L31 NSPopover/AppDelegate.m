//
//  AppDelegate.m
//  Cocoa Pr L31 NSPopover
//
//  Created by Michele Galvagno on 18/04/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


- (IBAction)showPopover:(id)sender {
    [_popover showRelativeToRect:[sender bounds] ofView:sender preferredEdge:NSMaxXEdge];
}

// MARK: - NSPopoverDelegate methods
- (NSWindow *)detachableWindowForPopover:(NSPopover *)popover {
    return _popoverWindow;
}
@end
