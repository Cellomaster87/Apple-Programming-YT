//
//  AppDelegate.m
//  Cocoa Pr L68 ObjC
//
//  Created by Michele Galvagno on 14/07/22.
//

#import "AppDelegate.h"
#import "CollectionViewController.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // se non funziona, creare un'istanza di CVC
    [[self window] setContentViewController:[[CollectionViewController alloc] init]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
