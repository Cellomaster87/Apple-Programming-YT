//
//  Assignment.h
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 13/04/22.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Assignment : NSObject {
    NSString *name;
    int grade;
}

@property (copy) NSString *name;
@property int grade;

@end

NS_ASSUME_NONNULL_END
