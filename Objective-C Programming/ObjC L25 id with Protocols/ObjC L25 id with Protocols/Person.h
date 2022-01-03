//
//  Person.h
//  ObjC L25 id with Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//

#import <Foundation/Foundation.h>
#import "Logging.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <Logging> {
    @private int age;
}

@property int age;

@end

NS_ASSUME_NONNULL_END
