//
//  RectangleView.h
//  Cocoa Pr L28 KeyboardEvents
//
//  Created by Michele Galvagno on 17/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface RectangleView : NSView {
    NSPoint startPoint;
    NSPoint endPoint;
    
    BOOL isOval;
}

@end

NS_ASSUME_NONNULL_END
