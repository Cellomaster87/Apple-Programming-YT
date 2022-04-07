//
//  AppController.h
//  Cocoa Pr L17 NSToolbar
//
//  Created by Michele Galvagno on 07/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject

@property IBOutlet NSTextField *label;

- (IBAction)toolbarAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
