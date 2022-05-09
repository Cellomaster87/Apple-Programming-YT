//
//  Person.h
//  Cocoa Pr L49 NSOutlineView
//
//  Created by Michele Galvagno on 09/05/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (copy) NSString *name;
@property (readonly, copy) NSMutableArray *children;
@property int age;

- (id)initWithName:(NSString *)name age:(int)age;
- (void)addChild:(Person *)p;

@end

NS_ASSUME_NONNULL_END
