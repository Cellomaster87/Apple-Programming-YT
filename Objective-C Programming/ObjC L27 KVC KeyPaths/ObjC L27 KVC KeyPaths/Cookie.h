//
//  Cookie.h
//  ObjC L27 KVC KeyPaths
//
//  Created by Michele Galvagno on 11/01/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cookie : NSObject {
    @private
    NSString *name;
}

@property (copy) NSString *name; 

@end

NS_ASSUME_NONNULL_END
