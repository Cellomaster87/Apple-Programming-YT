//
//  DrawingView.h
//  Cocoa Pr L27 MouseEvents
//
//  Created by Michele Galvagno on 16/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawingView : NSView {
    NSPoint startPoint;
    NSPoint endPoint;
}

@end

NS_ASSUME_NONNULL_END
