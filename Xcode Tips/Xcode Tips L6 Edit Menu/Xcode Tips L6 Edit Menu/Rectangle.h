//
//  Rectangle.h
//  Xcode Tips L6 Edit Menu
//
//  Created by Michele Galvagno on 06/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject {
    int height;
    int width;
}

- (void)setHeight:(int)newHeight;
- (void)setWidth:(int)newWidth;
- (void)setHeight:(int)newHeight width:(int)newWidth;

- (int)height;
- (int)width;

@end

NS_ASSUME_NONNULL_END
