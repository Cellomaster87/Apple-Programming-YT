//
//  AppController.m
//  Cocoa Pr L18 Multiple Windows
//
//  Created by Michele Galvagno on 09/04/22.
//

#import "AppController.h"
#import "DownloadsController.h"

@implementation AppController

@synthesize downloadsController;

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 
    }
    return self;
}

- (IBAction)showDownloads:(id)sender {
    // Set up the controller class so that we can display the window we want
    if (!downloadsController) {
        downloadsController = [[DownloadsController alloc] initWithWindowNibName:@"Downloads"];
    }
    [downloadsController showWindow:self];
}

@end
