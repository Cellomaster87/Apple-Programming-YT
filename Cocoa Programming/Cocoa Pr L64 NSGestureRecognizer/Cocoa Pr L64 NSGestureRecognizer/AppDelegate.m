//
//  AppDelegate.m
//  Cocoa Pr L64 NSGestureRecognizer
//
//  Created by Michele Galvagno on 13/06/22.
//

#import "AppDelegate.h"
#import "NSColor+NSColor_RandomColor.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSView *view;

@end

@implementation AppDelegate
@synthesize view;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [[view layer] setBackgroundColor:[[NSColor systemRedColor] CGColor]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction)pressView:(NSPressGestureRecognizer *)sender {
    if ([sender state] == NSGestureRecognizerStateBegan) {
        NSColor *color = [[NSColor alloc] randomColor];
        [[view layer] setBackgroundColor:[color CGColor]];
    }
}

- (IBAction)panView:(NSPanGestureRecognizer *)sender {
    NSPoint translation = [sender translationInView:[self.window contentView]];
    sender.view.frame = NSOffsetRect([[sender view] frame], translation.x, translation.y);
    [sender setTranslation:NSZeroPoint inView:nil];
}

- (IBAction)magnifyView:(NSMagnificationGestureRecognizer *)sender {
    CGFloat magnification = sender.magnification + 1.0;
    NSView *view = sender.view;
    CGAffineTransform transform = CGAffineTransformMakeScale(magnification, magnification);
    [[view layer] setAffineTransform:transform];
    sender.magnification = 0;
}

- (IBAction)rotateView:(NSRotationGestureRecognizer *)sender {
    CGFloat rotation = sender.rotation;
    NSView *view = sender.view;
    CGAffineTransform transform = CGAffineTransformMakeRotation(rotation);
    [[view layer] setAffineTransform:transform];
    sender.rotation = 0;
}

- (BOOL)gestureRecognizer:(NSGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(NSGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
