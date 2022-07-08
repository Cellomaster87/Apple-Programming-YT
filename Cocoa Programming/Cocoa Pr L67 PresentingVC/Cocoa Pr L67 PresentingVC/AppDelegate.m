//
//  AppDelegate.m
//  Cocoa Pr L67 PresentingVC
//
//  Created by Michele Galvagno on 07/07/22.
//

#import "AppDelegate.h"
#import "InitialViewController.h"
#import "ModalViewController.h"

@interface AppDelegate ()
@property (strong) IBOutlet NSWindow *window;

@property InitialViewController *initialVC;
@end

@implementation AppDelegate
@synthesize initialVC;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    initialVC = [[InitialViewController alloc] init];
    [[self window] setContentViewController:initialVC];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
