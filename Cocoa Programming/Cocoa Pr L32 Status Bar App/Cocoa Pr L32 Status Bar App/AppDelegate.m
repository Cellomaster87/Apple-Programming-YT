//
//  AppDelegate.m
//  Cocoa Pr L32 Status Bar App
//
//  Created by Michele Galvagno on 20/04/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate {
    NSStatusItem *statusItem;
    __weak IBOutlet NSMenu *menu;
    
}

- (void)awakeFromNib {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:menu];
    [statusItem setTitle:@"Yoda Bar"];
    [statusItem setHighlightMode:YES];
    [statusItem setImage:[NSImage imageNamed:@"image"]];
}

- (IBAction)showWindow:(id)sender {
    [NSApp activateIgnoringOtherApps:YES];
    [_window makeKeyAndOrderFront:nil];
}

- (IBAction)quit:(id)sender {
    [NSApp terminate:nil];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
