//
//  Pet.h
//  ObjC L35 ARC Intro
//
//  Created by Michele Galvagno on 15/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Toy;

@interface Pet : NSObject {
    Toy *toy;
}

@property (retain) Toy *toy;

@end

NS_ASSUME_NONNULL_END
