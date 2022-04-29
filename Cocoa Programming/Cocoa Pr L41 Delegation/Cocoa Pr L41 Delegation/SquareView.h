//
//  SquareView.h
//  Cocoa Pr L41 Delegation
//
//  Created by Michele Galvagno on 29/04/22.
//

#import <Cocoa/Cocoa.h>
@class SquareView;

NS_ASSUME_NONNULL_BEGIN

@protocol SquareViewDelegate <NSObject>

- (int)numberOfSquaresInSquareView:(SquareView *)squareView;

@end

@interface SquareView : NSView

@property (weak) id<SquareViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
