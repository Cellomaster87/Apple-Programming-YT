//
//  Dog.h
//  ObjC L28 KeyValue Observing
//
//  Created by Michele Galvagno on 11/01/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject {
    @private
    int hunger;
}

@property int hunger;

@end

NS_ASSUME_NONNULL_END
