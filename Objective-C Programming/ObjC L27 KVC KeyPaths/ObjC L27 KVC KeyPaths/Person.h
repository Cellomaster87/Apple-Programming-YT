//
//  Person.h
//  ObjC L27 KVC KeyPaths
//
//  Created by Michele Galvagno on 11/01/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Cookie; // there is a class called Cookie, just that you know it's there

@interface Person : NSObject {
@private NSString *name;
    int age;
    Cookie *cookie;
}

@property (copy) NSString *name;
@property int age;
@property (retain) Cookie *cookie;

@end

NS_ASSUME_NONNULL_END
