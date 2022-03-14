//
//  ViewController.m
//  Cocoa Pr L9 NSPopUpButton
//
//  Created by Michele Galvagno on 14/03/22.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [label setStringValue:@"Type something in the text field!"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)update:(id)sender {
    [label setStringValue:[popUp titleOfSelectedItem]];
}

- (IBAction)add:(id)sender {
    if ([[textField stringValue] isEqualToString:@""]) {
        [label setStringValue:@"Please add a non-empty string value!"];
    } else if ([[textField stringValue] localizedStandardContainsString:@" "]) {
        [label setStringValue:@"Multiple words not supported!"];
    } else {
        [popUp addItemWithTitle:[textField stringValue]];
    }
}
@end
