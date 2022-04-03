//
//  Person.h
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    NSString *name;
    int age;
}

@property (copy) NSString *name;
@property int age;

@end

NS_ASSUME_NONNULL_END
