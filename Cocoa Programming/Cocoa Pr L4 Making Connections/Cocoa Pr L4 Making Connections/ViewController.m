//
//  ViewController.m
//  Cocoa Pr L4 Making Connections
//
//  Created by Michele Galvagno on 07/03/22.
//

#import "ViewController.h"

@implementation ViewController

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
