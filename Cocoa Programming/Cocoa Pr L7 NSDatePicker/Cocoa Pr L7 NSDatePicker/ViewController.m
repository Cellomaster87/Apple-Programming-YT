//
//  ViewController.m
//  Cocoa Pr L7 NSDatePicker
//
//  Created by Michele Galvagno on 12/03/22.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // set the date value for the date field to the current value
    [_dateField setDateValue:[NSDate date]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)showMe:(id)sender {
    NSString *str = [NSString stringWithFormat:@"%@ was here at %@", [_nameField stringValue], [_dateField dateValue]];
    [_label setStringValue:str];
}

@end
