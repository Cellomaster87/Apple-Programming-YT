//
//  ViewController.h
//  Cocoa Pr L8 NSSlider
//
//  Created by Michele Galvagno on 12/03/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
    IBOutlet NSTextField *label;
    IBOutlet NSSlider *slider;
    // slider inherits from NSControl, which inherits from NSView
    // Attributes Inspector: check continuous mark
}

- (IBAction)sliderChange:(id)sender;


@end

