//
//  FirstViewController.h
//  Cocoa Pr L35 NSViewController
//
//  Created by Michele Galvagno on 23/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : NSViewController

@property (weak) IBOutlet NSTextField *textField;

- (IBAction)changeText:(id)sender;

@end

NS_ASSUME_NONNULL_END
