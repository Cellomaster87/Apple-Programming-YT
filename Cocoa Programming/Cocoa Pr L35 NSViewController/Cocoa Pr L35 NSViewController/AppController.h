//
//  AppController.h
//  Cocoa Pr L35 NSViewController
//
//  Created by Michele Galvagno on 23/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject

@property (weak) IBOutlet NSView *ourView;
@property (strong) NSViewController *ourViewController;

- (IBAction)changeView:(id)sender;
- (void)changeViewController:(NSInteger)tag;

@end

NS_ASSUME_NONNULL_END
