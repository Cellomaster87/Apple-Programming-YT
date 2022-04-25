//
//  AppController.m
//  Cocoa Pr L35 NSViewController
//
//  Created by Michele Galvagno on 23/04/22.
//

#import "AppController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation AppController
@synthesize ourView;
@synthesize ourViewController;

enum {
    kFirstViewTag = 0,
    kSecondViewTag
};

NSString *const kFirstView = @"FirstViewController";
NSString *const kSecondView = @"SecondViewController";

- (void)awakeFromNib {
    [self changeViewController:kFirstViewTag];
}

- (IBAction)changeView:(id)sender {
    NSInteger tag = [[sender selectedCell] tag];
    [self changeViewController:tag];
}

- (void)changeViewController:(NSInteger)tag {
    [[ourViewController view] removeFromSuperview];
    switch (tag) {
        case kFirstViewTag:
            self.ourViewController = [[FirstViewController alloc] initWithNibName:kFirstView bundle:nil];
            break;
        case kSecondViewTag:
            self.ourViewController = [[SecondViewController alloc] initWithNibName:kSecondView bundle:nil];
            break;
        default:
            break;
    }
    
    [ourView addSubview:[ourViewController view]];
    [[ourViewController view] setFrame:[ourView bounds]];
    
    // Auto-layout code
    // FIXME: this is not working
    [[ourViewController view] setAutoresizingMask:NSViewHeightSizable|NSViewWidthSizable];
}

@end
