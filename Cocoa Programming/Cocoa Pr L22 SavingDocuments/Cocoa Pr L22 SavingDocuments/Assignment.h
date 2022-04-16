//
//  Assignment.h
//  Cocoa Pr L21 ReferenceCounting
//
//  Created by Michele Galvagno on 13/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Assignment : NSObject <NSCoding> {
    NSString *name;
    int grade;
}

@property (copy) NSString *name; 
@property int grade;

@end

NS_ASSUME_NONNULL_END
