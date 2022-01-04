//
//  Person.h
//  ObjC L26 KeyValue Coding
//
//  Created by Michele Galvagno on 04/01/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    @private
    NSString *name;
    int age;
}

@property (copy) NSString *name;
@property int age;

@end

NS_ASSUME_NONNULL_END
