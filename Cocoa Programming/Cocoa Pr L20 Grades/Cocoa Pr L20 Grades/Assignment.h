//
//  Assignment.h
//  Cocoa Pr L20 Grades
//
//  Created by Michele Galvagno on 12/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Assignment : NSObject {
    NSString *name;
    int grade;
}

@property (copy) NSString *name; // mutable subclass, make it (copy)
@property int grade;

@end

NS_ASSUME_NONNULL_END
