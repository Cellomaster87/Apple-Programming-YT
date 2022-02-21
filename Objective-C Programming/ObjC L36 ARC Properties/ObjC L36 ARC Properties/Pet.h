//
//  Pet.h
//  ObjC L36 ARC Properties
//
//  Created by Michele Galvagno on 17/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Toy;

@interface Pet : NSObject 

@property (unsafe_unretained) Toy *toy;
/*!
 Strong reference: any time you want to take ownership of an object
 you will use the strong keyword.
 Weak reference: when we use a delegate;
 when you deal with an object you don't really own but want to talk to.
 We don't actually own that object, we just point to it for as long as it is alive
 (that is, kept by something else)
 Assign won't set the property back to nil when it is released > dangling pointer, it points to an object that is no longer there > changing its name to unsafe_unretained
 
 Use (weak) as much as you can. 
 */

@end

NS_ASSUME_NONNULL_END
