//
//  AppDelegate.m
//  Cocoa Pr L66 ObjC
//
//  Created by Michele Galvagno on 18/06/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate
@synthesize leftView;
@synthesize rightView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    leftView = [[ColorView alloc] init];
    rightView = [[ColorView alloc] init];
    
    leftView.translatesAutoresizingMaskIntoConstraints = NO;
    rightView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSView *view = [self.window contentView];
    [self.window setBackgroundColor:[NSColor systemMintColor]];
    
    if (view) {
        [view addSubview:leftView];
        [view addSubview:rightView];
        
        [NSLayoutConstraint activateConstraints:@[
            [leftView.topAnchor constraintEqualToAnchor:[view topAnchor]],
            [leftView.leftAnchor constraintEqualToAnchor:[view leftAnchor]],
            [leftView.rightAnchor constraintEqualToAnchor:[view centerXAnchor]],
            [leftView.widthAnchor constraintGreaterThanOrEqualToConstant:150],
            [leftView.heightAnchor constraintEqualToConstant:100],
            [rightView.centerXAnchor constraintEqualToAnchor:[view centerXAnchor] constant:50],
            [rightView.centerYAnchor constraintEqualToAnchor:[view centerYAnchor]],
            [rightView.widthAnchor constraintEqualToConstant:100],
            [rightView.heightAnchor constraintEqualToConstant:100]
        ]];
        NSLog(@"Constraints activated");
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
