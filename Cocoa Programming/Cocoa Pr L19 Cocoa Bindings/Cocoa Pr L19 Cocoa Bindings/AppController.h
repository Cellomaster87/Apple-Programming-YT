//
//  AppController.h
//  Cocoa Pr L19 Cocoa Bindings
//
//  Created by Michele Galvagno on 11/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject {
    BOOL checkBoxIsEnabled;
    int amount;
}

@property BOOL checkBoxIsEnabled;
@property int amount;

@end

NS_ASSUME_NONNULL_END
