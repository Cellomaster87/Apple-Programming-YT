//
//  AppDelegate.m
//  Cocoa Pr L40 NSUserDefaults
//
//  Created by Michele Galvagno on 29/04/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *titleTextField;
- (IBAction)changeTitle:(id)sender;
@end

@implementation AppDelegate

#define kWindowTitle @"WindowTitle"

// + because it is a class method, not an instance method
+ (void)initialize {
    NSDictionary *defaults = [NSDictionary dictionaryWithObject:@"Initial Window Title" forKey:kWindowTitle];
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    // Return the value that is associated with our windowtitle key
    [_window setTitle:[[NSUserDefaults standardUserDefaults] objectForKey:kWindowTitle]];
    [_titleTextField setStringValue:[[NSUserDefaults standardUserDefaults] objectForKey:kWindowTitle]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    [[NSUserDefaults standardUserDefaults] setObject:[_titleTextField stringValue] forKey:kWindowTitle];
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


- (IBAction)changeTitle:(id)sender {
    [_window setTitle:[_titleTextField stringValue]];
}
@end
