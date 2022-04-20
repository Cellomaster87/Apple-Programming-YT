//
//  AppDelegate.h
//  Cocoa Pr L31 NSPopover
//
//  Created by Michele Galvagno on 18/04/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSPopoverDelegate> 
@property (weak) IBOutlet NSPopover *popover;
@property (weak) IBOutlet NSWindow *popoverWindow;

- (IBAction)showPopover:(id)sender;

@end

