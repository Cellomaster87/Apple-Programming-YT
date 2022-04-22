//
//  AppController.m
//  Cocoa Pr L34 Custom Sheet
//
//  Created by Michele Galvagno on 22/04/22.
//

#import "AppController.h"
#import "AppDelegate.h"

@implementation AppController
//@synthesize sheet = _sheet;
@synthesize sheet;

- (IBAction)activateSheet:(id)sender {
    if (!sheet) {
        [NSBundle loadNibNamed:@"Sheet" owner:self];
    }
//    [NSApp beginSheet:self.sheet modalForWindow:[(AppDelegate *)[NSApp delegate] window] modalDelegate:self didEndSelector:NULL contextInfo:NULL];
    [NSApp.mainWindow beginSheet:self.sheet completionHandler:NULL];
}

- (IBAction)closeSheet:(id)sender {
    [NSApp endSheet:self.sheet];
    [self.sheet close];
    self.sheet = nil; 
}

@end
