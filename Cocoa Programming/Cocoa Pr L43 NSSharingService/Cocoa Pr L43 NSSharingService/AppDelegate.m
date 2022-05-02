//
//  AppDelegate.m
//  Cocoa Pr L43 NSSharingService
//
//  Created by Michele Galvagno on 02/05/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *shareButton;
@property (unsafe_unretained) IBOutlet NSTextView *textView;
@property (weak) IBOutlet NSImageView *imageView;

- (IBAction)shareToService:(id)sender;

@end

@implementation AppDelegate
@synthesize shareButton;
@synthesize textView;
@synthesize imageView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self.shareButton setImage:[NSImage imageNamed:NSImageNameShareTemplate]];
    [self.shareButton sendActionOn:NSEventMaskLeftMouseDown];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


- (IBAction)shareToService:(id)sender {
    NSMutableArray *shareItems = [NSMutableArray arrayWithObject:[self.textView string]];
    NSImage *image = [self.imageView image];
    if (image) [shareItems addObject:image];
    
    NSSharingServicePicker *sharingPicker = [[NSSharingServicePicker alloc] initWithItems:shareItems];
    // Set up the delegate
    sharingPicker.delegate = self;
    [sharingPicker showRelativeToRect:[self.shareButton bounds] ofView:self.shareButton preferredEdge:NSMaxYEdge];
}

#pragma mark Sharing Service Picker Delegate methods
- (id<NSSharingServiceDelegate>)sharingServicePicker:(NSSharingServicePicker *)sharingServicePicker delegateForSharingService:(NSSharingService *)sharingService {
    return self;
}

#pragma mark Sharing Service Delegate methods
// It asks for the window the sharing service is being activated in
- (NSWindow *)sharingService:(NSSharingService *)sharingService sourceWindowForShareItems:(NSArray *)items sharingContentScope:(NSSharingContentScope *)sharingContentScope {
    return self.window;
}

@end
