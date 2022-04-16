//
//  DropView.h
//  Cocoa Pr L24-6 Storyboard
//
//  Created by Michele Galvagno on 16/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface DropView : NSView <NSDraggingDestination>

@property NSImage *image; 

@end

NS_ASSUME_NONNULL_END
