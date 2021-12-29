//
//  Animal.h
//  ObjC L19 declared properties
//
//  Created by Michele Galvagno on 29/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject {
    int age;
    int height;
    NSString *name;
}

/*! This is the layout of the property.
 Attributes can be atomic, nonatomic, readonly
 readonly = we can only have a getter method
 readwrite = we can get and we can also set the value (this is the default, can be left blank)
 assign = assigns the value shown in parameters (useful when we get integer and doubles); when we use class, we don't want to use this. Takes what was in a parameter and put it into the instance, and this would cause memory leaks
 retain = whatever comes in the parameter will be retained and owned by the class, while the old value will be released
 copy = not often used, good for text fields in UI
 
 @property (attributes) type name
 */

// This is like declaring your setters and getters w/o initialising things yet
// It automatically gives use the set<name> get<name> methods
/*
@property int age;
@property int height;
 */
@property (nonatomic) int age, height; 
@property (retain, setter=setSuperMonkeyName:) NSString *name;

@end

NS_ASSUME_NONNULL_END
