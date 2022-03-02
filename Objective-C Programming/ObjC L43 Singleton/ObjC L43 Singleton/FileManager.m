//
//  FileManager.m
//  ObjC L43 Singleton
//
//  Created by Michele Galvagno on 02/03/22.
//

#import "FileManager.h"

@implementation FileManager
// minus sign = instance method
// plus sign = class method, it is interfacing with a class
// initialize is going to be called only once, and it is being called at the beginning

// how to make storage for this? Properties work only if we have an object, but here we have a class. We need the static keyword
// static is going to keep its state
static FileManager *defaultManager;

+ (void)initialize {
    static BOOL isInitialized = NO;
    if (!isInitialized) {
        defaultManager = [[FileManager alloc] init];
        isInitialized = YES;
    }
}
/*
+ (FileManager *)defaultManager {
    return defaultManager;
}
 */

+ (FileManager *)defaultManager { // this is protected against being called multiple times
    static FileManager *defaultManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultManager = [[FileManager alloc] init];
    });
    return defaultManager;
}

@end
