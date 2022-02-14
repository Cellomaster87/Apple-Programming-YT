//
//  main.m
//  ObjC L32 NSCoding
//
//  Created by Michele Galvagno on 14/02/22.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect1 = [[Rectangle alloc] initWithHeight:56 width:48];
        Rectangle *rect2 = [[Rectangle alloc] initWithHeight:12 width:6];
        NSArray *array = [NSArray arrayWithObjects:rect1, rect2, nil];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array requiringSecureCoding:FALSE error:NULL];
        
        NSArray *arrayFromData = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        NSLog(@"%@", arrayFromData);
        
    }
    return 0;
}
