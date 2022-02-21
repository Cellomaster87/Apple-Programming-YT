//
//  ClassExt.h
//  ObjC L37 Class Extensions
//
//  Created by Michele Galvagno on 21/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*!
 Extension: expand the functionalities of your class
 Add abilities.
 */

@interface ClassExt : NSObject

// change what a property does; readonly creates only the getter
@property (readonly, copy) NSString *name;

- (void)log;

@end

NS_ASSUME_NONNULL_END
