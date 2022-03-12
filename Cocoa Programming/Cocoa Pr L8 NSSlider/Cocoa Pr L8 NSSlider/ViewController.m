//
//  ViewController.m
//  Cocoa Pr L8 NSSlider
//
//  Created by Michele Galvagno on 12/03/22.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set some default values - Check the NSControl class
    [slider setIntValue:25];
    [label setIntValue:[slider intValue]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)sliderChange:(id)sender {
    [label setIntValue:[slider intValue]];
}
@end
