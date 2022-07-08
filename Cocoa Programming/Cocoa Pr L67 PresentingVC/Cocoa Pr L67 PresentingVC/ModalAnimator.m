//
//  ModalAnimator.m
//  Cocoa Pr L67 PresentingVC
//
//  Created by Michele Galvagno on 08/07/22.
//

#import "ModalAnimator.h"

@implementation BackgroundView

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setWantsLayer:YES];
        [[self layer] setBackgroundColor:[[NSColor colorWithCalibratedWhite:0 alpha:0.5] CGColor]];
        [self setAlphaValue:1];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    
    if (!self) {
        [NSException raise:@"InitNotImplemented" format:@"Subclasses must implement a valid init method"];
    }
    
    return self;
}

- (void)mouseDown:(NSEvent *)event {
    
}

@end


@implementation ModalAnimator
@synthesize backgroundView;
@synthesize centerYConstraint;

- (void)animateDismissalOfViewController:(nonnull NSViewController *)viewController fromViewController:(nonnull NSViewController *)fromViewController {
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        [[self.backgroundView animator] setAlphaValue:0];
        [[self.centerYConstraint animator] setConstant:100];
    } completionHandler:^{
        [[self backgroundView] removeFromSuperview];
    }];
}

- (void)animatePresentationOfViewController:(nonnull NSViewController *)viewController fromViewController:(nonnull NSViewController *)fromViewController {
    backgroundView = [[BackgroundView alloc] initWithFrame:CGRectZero];
    NSView *contentView = [fromViewController view];
    [backgroundView setFrame:[contentView bounds]];
    [backgroundView setAutoresizingMask: NSViewHeightSizable & NSViewWidthSizable];
    [contentView addSubview:backgroundView];
    
    NSView *modalView = [viewController view];
    [modalView setTranslatesAutoresizingMaskIntoConstraints:NO];
    centerYConstraint = [[modalView centerYAnchor] constraintEqualToAnchor:[backgroundView centerYAnchor] constant:100];
    [backgroundView addSubview:modalView];
    
    [NSLayoutConstraint activateConstraints:@[
        [modalView.centerXAnchor constraintEqualToAnchor:backgroundView.centerXAnchor],
        centerYConstraint,
        [modalView.widthAnchor constraintEqualToAnchor:backgroundView.widthAnchor constant:-100],
        [modalView.heightAnchor constraintEqualToAnchor:backgroundView.heightAnchor constant:-100]
    ]];
    
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        [context setDuration:0.5];
        [[self.backgroundView animator] setAlphaValue:1];
        [[self.centerYConstraint animator] setConstant:0];
    }];
}

@end

