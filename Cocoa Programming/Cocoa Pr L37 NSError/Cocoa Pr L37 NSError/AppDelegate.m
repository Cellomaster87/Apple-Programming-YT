//
//  AppDelegate.m
//  Cocoa Pr L37 NSError
//
//  Created by Michele Galvagno on 26/04/22.
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

- (IBAction)saveSomeText:(id)sender {
    NSString *someText = @"Here is some text that is going to be saved and we will look at the error that is returned";
    NSError *error = nil;
    BOOL result = [someText writeToFile:@"/Users/michelegalvagno/Desktop/myText.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if (result == NO) {
        NSLog(@"%@", [error domain]);
        NSLog(@"%ld", [error code]);
        NSLog(@"%@", [error localizedDescription]);
        [[NSAlert alertWithError:error] runModal];
    }
};


@end
