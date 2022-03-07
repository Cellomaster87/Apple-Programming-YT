//
//  ViewController.m
//  Cocoa Pr L5 awakeFromNib
//
//  Created by Michele Galvagno on 07/03/22.
//

#import "ViewController.h"

@implementation ViewController
/*
// This doesn't work because it doesn't cover the connections that are made
- (id)init {
    [label setFont:[NSFont fontWithName:@"Herculanum" size:15]];
    return self;
}
 */

// Wonder if this is still relevant in Xcode 13.x
// It seems that if we write this in viewDidLoad it also works
- (void)awakeFromNib {
    [label setFont:[NSFont fontWithName:@"Herculanum" size:15]];
    [label setTextColor:[NSColor redColor]];
    [label setBackgroundColor:[NSColor systemBlueColor]];
    [label setDrawsBackground:YES]; // this is needed because it would be off by default
    [label setSelectable:YES]; // this enables copy-pasting as system-wide default (!)
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)sayHello:(id)sender {
    [label setStringValue:@"Hello World!"];
}


@end
