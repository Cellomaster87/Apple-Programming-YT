//
//  main.m
//  ObjC L30 Property Lists
//
//  Created by Michele Galvagno on 17/01/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = @"/Users/michelegalvagno/Downloads/myPlist.plist";
        NSArray *array = [NSArray arrayWithObjects:@"Yoda", @"Samwise", @"Darth", nil];
        
        NSDictionary *plist = [NSDictionary dictionaryWithObjectsAndKeys:array, @"ArrayKey", @"Some string", @"StringKey", nil];
        
        [plist writeToFile:path atomically:YES];
        
        NSDictionary *newInfo = [NSDictionary dictionaryWithContentsOfFile:path];
        NSLog(@"%@", newInfo);
    }
    return 0;
}
