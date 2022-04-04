//
//  Person.h
//  Cocoa Pr L13-15
//
//  Created by Michele Galvagno on 04/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    NSString *name;
    int age;
}

@property (copy) NSString *name;
@property int age;

@end

NS_ASSUME_NONNULL_END
