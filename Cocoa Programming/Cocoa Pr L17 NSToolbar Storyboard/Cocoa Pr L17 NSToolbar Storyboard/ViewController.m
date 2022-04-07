//
//  ViewController.m
//  Cocoa Pr L17 NSToolbar Storyboard
//
//  Created by Michele Galvagno on 07/04/22.
//

#import "ViewController.h"

@implementation ViewController

@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)toolbarAction:(id)sender {
    [label setStringValue:[sender label]];
    /*
     if ([sender tag] == 0) {
         [label setStringValue:[sender label]];
     } else {
         [label setStringValue:@""];
     }
     */
}


@end
