//
//  ViewController.h
//  Cocoa Pr L7 NSDatePicker
//
//  Created by Michele Galvagno on 12/03/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSTextField *label;
@property (strong) IBOutlet NSTextField *nameField;
@property (strong) IBOutlet NSDatePicker *dateField;

- (IBAction)showMe:(id)sender;

@end

