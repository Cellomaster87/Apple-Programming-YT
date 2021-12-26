//
//  Rectangle.h
//  ObjC L16 Memory Management
//
//  Created by Michele Galvagno on 26/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// no curly braces in the new implementation
@interface Rectangle : NSObject {
    // instance variables
    int height;
    int width;
}

- (id)initWithHeight:(int)h;
- (id)initWithWidth:(int)w;
- (id)initWithHeight:(int)h width:(int)w;

// two types of methods, instance method and class method. By now use -
- (void)setHeight:(int)newHeight;
- (void)setWidth:(int)newWidth; // these are like function prototypes
- (void)setHeight:(int)newHeight width:(int)newWidth;

// add getter methods - just use the name of the property
- (int)height;
- (int)width;

@end

NS_ASSUME_NONNULL_END
