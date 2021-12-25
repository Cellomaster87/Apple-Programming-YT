//
//  Rectangle.m
//  ObjC L14
//
//  Created by Michele Galvagno on 22/12/21.
//

#import "Rectangle.h"

@implementation Rectangle

// Overriding the init
// We have to return an object type: id is a pointer to an instance of a class
// We need to initialise both the Rectangle and everything above it
- (id)init {
    // Call the initialiser of the superclass and return that object
    self = [super init];
    
    if (self) { // also possible if (self = [super init] 
        height = 6;
        width = 4;
    }
    
    return self;
}

- (void)setHeight:(int)newHeight {
    height = newHeight;
}

- (void)setWidth:(int)newWidth {
    width = newWidth;
}

- (void)setHeight:(int)newHeight width:(int)newWidth {
    height = newHeight;
    width = newWidth;
}

- (int)height {
    return height;
}

- (int)width {
    return width;
}

- (NSString *)description {
    NSString *myString = [NSString stringWithFormat:@"Rect Height: %d, Width: %d", height, width];
    
    return myString;
}

@end
