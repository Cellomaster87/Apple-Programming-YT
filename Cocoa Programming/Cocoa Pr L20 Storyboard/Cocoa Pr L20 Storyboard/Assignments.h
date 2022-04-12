//
//  Assignments.h
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 12/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Assignments : NSObject {
    NSString *name;
    int grade;
}

@property (copy) NSString *name;
@property int grade;

@end

NS_ASSUME_NONNULL_END
