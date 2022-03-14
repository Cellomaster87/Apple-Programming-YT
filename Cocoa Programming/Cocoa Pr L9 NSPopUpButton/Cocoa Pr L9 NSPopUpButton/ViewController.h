//
//  ViewController.h
//  Cocoa Pr L9 NSPopUpButton
//
//  Created by Michele Galvagno on 14/03/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
    IBOutlet NSPopUpButtonCell *popUp;
    IBOutlet NSTextField *textField;
    IBOutlet NSTextField *label;
}
- (IBAction)add:(id)sender;
- (IBAction)update:(id)sender;


@end

