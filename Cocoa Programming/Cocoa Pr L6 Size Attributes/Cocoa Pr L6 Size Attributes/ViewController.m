//
//  ViewController.m
//  Cocoa Pr L6 Size Attributes
//
//  Created by Michele Galvagno on 12/03/22.
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
    [_label setStringValue:@"Hello World!"];
}

@end

/*!
 Lesson 6
 Main.storyboard : select the Window > Size inspector > check "Minimum size" to be eqaul to the launch size
 Drag the preview to set the initial position
 
 Select button > Size inspector > outside struts are for the frame distance from the sides of the window. Springs (arrows, expansion keys, how it will expand/contract)
 
 In the Layout dropdown menu, choose "Autoresizing mask" instead of "Inferred" or it will not behave as expected. 
 
 */
