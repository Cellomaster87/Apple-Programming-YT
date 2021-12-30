//
//  Rectangle.h
//  ObjC L21 Dot Syntax
//
//  Created by Michele Galvagno on 30/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject {
    int height;
    int width;
}

@property int height, width;

@end

NS_ASSUME_NONNULL_END
