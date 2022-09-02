//
//  AppDelegate.m
//  Cocoa Pr L69 ObjC
//
//  Created by Michele Galvagno on 02/09/22.
//

#import "AppDelegate.h"
#import "MainWindowController.h"
#import "CodeWindowController.h"

@interface AppDelegate ()
@property (nonatomic, strong) MainWindowController *mainWC;
@property (nonatomic, strong) CodeWindowController *codeWC;

@end

@implementation AppDelegate
//@synthesize mainWC = _mainWC;
//@synthesize codeWC = _codeWC;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.mainWC = [[MainWindowController alloc] init];
    self.codeWC = [[CodeWindowController alloc] init];
    
//    [_mainWC showWindow:self];
//    [_codeWC showWindow:self];
    [self.mainWC showWindow:self];
    [self.codeWC showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

/// This should be equivalent to the lazy instantiation of the property
- (MainWindowController *)mainWC {
    if (!_mainWC) {
        _mainWC = [[MainWindowController alloc] init];
    }
    NSLog(@"mainWC allocated");
    return _mainWC;
}

- (CodeWindowController *)codeWC {
    if (!_codeWC) {
        _codeWC = [[CodeWindowController alloc] init];
    }
    NSLog(@"codeWC allocated");
    return _codeWC;
}

@end
