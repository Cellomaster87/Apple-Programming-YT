//
//  AppController.h
//  Cocoa Pr L34 Custom Sheet
//
//  Created by Michele Galvagno on 22/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject

@property (assign) IBOutlet NSWindow *sheet;

- (IBAction)activateSheet:(id)sender;
- (IBAction)closeSheet:(id)sender;

@end

NS_ASSUME_NONNULL_END
