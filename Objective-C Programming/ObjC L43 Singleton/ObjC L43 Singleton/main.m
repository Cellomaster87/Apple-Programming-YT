//
//  main.m
//  ObjC L43 Singleton
//
//  Created by Michele Galvagno on 02/03/22.
//

#import <Foundation/Foundation.h>
#import "FileManager.h"

/*!
 Singleton: creates the same object
 Global object that we want to access in different places
 Anybody may want to post there, read from there, get notifications etc...
 Easy to use, one gets often carried away when trying to create them
 A global thing is difficult to debug
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // MARK: - Examples
        [NSUserDefaults standardUserDefaults];
        NSLog(@"%@", [NSUserDefaults standardUserDefaults]);
        
        [NSFileManager defaultManager];
        NSLog(@"%@", [NSFileManager defaultManager]);
        
        [NSNotificationCenter defaultCenter]; // anyone can post and observe notifications from this place
        
        // MARK: - Test
        NSLog(@"%@", [FileManager defaultManager]);
        NSLog(@"%@", [FileManager defaultManager]);
    }
    return 0;
}
