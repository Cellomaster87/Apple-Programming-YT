//
//  Person.h
//  ObjC L41 NSSortDescriptor
//
//  Created by Michele Galvagno on 27/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (copy) NSString *name;
@property int age;

- (id)initWithName:(NSString *)name age:(int)age;


@end

NS_ASSUME_NONNULL_END
