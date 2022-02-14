//
//  Rectangle.h
//  ObjC L32 NSCoding
//
//  Created by Michele Galvagno on 14/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject <NSCoding> {
    int height;
    int width;
}

@property int height;
@property int width;

- (id)initWithHeight:(int)h;
- (id)initWithWidth:(int)w;
- (id)initWithHeight:(int)h width:(int)w;

@end

NS_ASSUME_NONNULL_END
