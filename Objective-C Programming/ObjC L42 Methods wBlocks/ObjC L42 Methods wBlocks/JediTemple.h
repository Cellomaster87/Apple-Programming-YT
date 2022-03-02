//
//  JediTemple.h
//  ObjC L42 Methods wBlocks
//
//  Created by Michele Galvagno on 02/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JediTemple : NSObject

// Method to enumerate through all the Jedi names in the temple
- (void)enumerateMembersWithBlock:(void (^)(NSString *name, int index, BOOL *stop))block; 

@end

NS_ASSUME_NONNULL_END
