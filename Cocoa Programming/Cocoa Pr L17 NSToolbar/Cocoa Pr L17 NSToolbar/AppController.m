//
//  AppController.m
//  Cocoa Pr L17 NSToolbar
//
//  Created by Michele Galvagno on 07/04/22.
//

#import "AppController.h"

@implementation AppController

@synthesize label;

- (IBAction)toolbarAction:(id)sender {
    if ([sender tag] == 0) {
        [label setStringValue:[sender label]];
    } else {
        [label setStringValue:@""];
    }
    
}

@end
