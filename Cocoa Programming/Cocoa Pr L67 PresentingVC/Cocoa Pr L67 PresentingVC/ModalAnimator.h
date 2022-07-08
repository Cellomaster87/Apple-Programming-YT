//
//  ModalAnimator.h
//  Cocoa Pr L67 PresentingVC
//
//  Created by Michele Galvagno on 08/07/22.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface BackgroundView : NSView

@end

@interface ModalAnimator : NSObject <NSViewControllerPresentationAnimator>
@property BackgroundView *backgroundView;
@property NSLayoutConstraint *centerYConstraint;

@end

NS_ASSUME_NONNULL_END
