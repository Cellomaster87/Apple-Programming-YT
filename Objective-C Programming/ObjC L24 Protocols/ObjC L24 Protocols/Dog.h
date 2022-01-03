//
//  Dog.h
//  ObjC L24 Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//

#import <Foundation/Foundation.h>
#import "Logging.h"

NS_ASSUME_NONNULL_BEGIN
// To conform to a protocol, you put its name in angled brackets
@interface Dog : NSObject <Logging> {
@private int age;
}

@property int age; 

@end

NS_ASSUME_NONNULL_END
