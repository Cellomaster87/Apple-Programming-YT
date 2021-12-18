//
//  main.m
//  ObjC L1
//
//  Created by Michele Galvagno on 18/12/21.
//

#import <Foundation/Foundation.h> // this imports everything we need to get started (≠ #include from C)

int main(int argc, const char * argv[]) {
    /// In Xcode 3.2.3 (!) this first line was
    /// NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    /// A pool of memory where you can story objects so that you can get rid of them at a later stage
    /// Should we leave this in Xcode 13? https://stackoverflow.com/questions/14677049/what-is-autoreleasepool#14677229
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!"); // it prints a timestamp in the console
        // If we take the @ out, it becomes a C string, while this is an ObjC string.
        NSLog(@"My house number is %d", 9); // It seems that we do not need the \n at the end
        
        int houseNumber = 9;
        NSLog(@"My house number is %d", houseNumber);
    /// an extra line [pool drain] was present there
    }
    return 0;
}
