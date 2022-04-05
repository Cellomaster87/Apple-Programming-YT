//
//  AppController.h
//  Cocoa Pr L16 Menu Items
//
//  Created by Michele Galvagno on 05/04/22.
//

// This was necessary instead of Foundation
#import "Cocoa/Cocoa.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject {
    IBOutlet NSTextField *label;
}

- (IBAction)sayHello:(id)sender;
- (IBAction)sayGoodbye:(id)sender;

@end

NS_ASSUME_NONNULL_END
