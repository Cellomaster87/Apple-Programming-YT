//
//  Rectangle.m
//  ObjC L32 NSCoding
//
//  Created by Michele Galvagno on 14/02/22.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize height, width;

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeInt:height forKey:@"height"];
    [coder encodeInt:width forKey:@"width"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        height = [coder decodeIntForKey:@"height"];
        width = [coder decodeIntForKey:@"width"];
    }
    return self;
}

- (id)initWithHeight:(int)h width:(int)w {
    self = [super init];
    if (self) {
        height = h;
        width = w;
    }
    return self;
}

- (id)initWithHeight:(int)h {
    self = [self initWithHeight:h width:10];
    return self;
}

- (id)initWithWidth:(int)w {
    self = [self initWithHeight:20 width:w];
    return self;
}

- (id)init {
    self = [self initWithHeight:20 width:10];
    return self;
}

- (NSString *)description {
    NSString *myString = [NSString stringWithFormat:@"Rect Height: %d, Width: %d", height, width];
    return myString;
}

@end
