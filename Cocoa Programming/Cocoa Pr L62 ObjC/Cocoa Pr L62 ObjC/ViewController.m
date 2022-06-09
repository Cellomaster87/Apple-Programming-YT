//
//  ViewController.m
//  Cocoa Pr L62 ObjC
//
//  Created by Michele Galvagno on 09/06/22.
//

#import "ViewController.h"

@implementation ViewController

@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]  isEqualToString: @"DetailSegue"]) {
        NSViewController *detailVC = (NSViewController *)segue.destinationController;
        detailVC.title = segue.identifier;
        detailVC.representedObject = textField.stringValue;
    }
}


@end
