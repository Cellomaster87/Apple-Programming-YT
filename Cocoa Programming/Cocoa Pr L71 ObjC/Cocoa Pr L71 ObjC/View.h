//
//  View.h
//  Cocoa Pr L71 ObjC
//
//  Created by Michele Galvagno on 16/09/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface View : NSView

@property IBInspectable (nonatomic) NSColor *backgroundColor;
@property IBInspectable (nonatomic) CGFloat cornerRadius;
@property IBInspectable (nonatomic) NSColor *borderColor;
@property IBInspectable (nonatomic) CGFloat borderWidth;

@end

NS_ASSUME_NONNULL_END
