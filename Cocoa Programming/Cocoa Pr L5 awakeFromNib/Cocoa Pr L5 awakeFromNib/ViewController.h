//
//  ViewController.h
//  Cocoa Pr L5 awakeFromNib
//
//  Created by Michele Galvagno on 07/03/22.
//

#import <Cocoa/Cocoa.h>

// if we create the IBOutlet directly by dragging from the Interface, we get @property (strong) before it,
// otherwise we need to put it between braces { } 
@interface ViewController : NSViewController {
    IBOutlet NSTextField *label;
}

- (IBAction)sayHello:(id)sender;

@end

