//
//  AppController.h
//  Cocoa Pr L18 Multiple Windows
//
//  Created by Michele Galvagno on 09/04/22.
//

#import <Cocoa/Cocoa.h>

@class DownloadsController;

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject
@property DownloadsController *downloadsController;

- (IBAction)showDownloads:(id)sender;

@end

NS_ASSUME_NONNULL_END
