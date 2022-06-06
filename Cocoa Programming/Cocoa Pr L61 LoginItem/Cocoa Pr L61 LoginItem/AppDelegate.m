//
//  AppDelegate.m
//  Cocoa Pr L61 LoginItem
//
//  Created by Michele Galvagno on 06/06/22.
//

#import "AppDelegate.h"
#import <ServiceManagement/ServiceManagement.h>

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate
- (IBAction)loginItemPressed:(NSButton *)sender {
//    [[NSUserDefaults standardUserDefaults] setObject:<#(nullable id)#> forKey:<#(nonnull NSString *)#>]
    
    if (!SMLoginItemSetEnabled((__bridge CFStringRef)@"com.michelegalvagno.Cocoa-Pr-L61-Helper", (BOOL)[sender state])) {
        NSLog(@"The login item was enabled");
    }
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
