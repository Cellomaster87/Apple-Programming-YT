//
//  ViewController.m
//  Cocoa Pr L16b
//
//  Created by Michele Galvagno on 05/04/22.
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

- (IBAction)sayHello:(id)sender {
    [label setStringValue:@"Hello!"];
}

- (IBAction)sayGoodbye:(id)sender {
    [label setStringValue:@"Goodbye!"];
}

@end
