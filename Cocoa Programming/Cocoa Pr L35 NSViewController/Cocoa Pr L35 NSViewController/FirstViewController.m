//
//  FirstViewController.m
//  Cocoa Pr L35 NSViewController
//
//  Created by Michele Galvagno on 23/04/22.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)changeText:(id)sender {
    [textField setStringValue:@"Changed Value"];
}

@end
