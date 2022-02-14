//
//  main.m
//  ObjC L31 NSData
//
//  Created by Michele Galvagno on 14/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"Bob", @"Yoda", [NSNumber numberWithInt:56], nil];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array requiringSecureCoding:FALSE error:NULL];
        [data writeToFile:@"/Users/michelegalvagno/Desktop/textFile.txt" atomically:YES];
        
        NSData *dataFromFile = [[NSData alloc] initWithContentsOfFile:@"/Users/michelegalvagno/Desktop/textFile.txt"];
        NSArray *arrayFromFile = /* [NSKeyedUnarchiver unarchivedObjectOfClass: NSArray fromData:dataFromFile error:NULL];*/ [NSKeyedUnarchiver unarchiveObjectWithData:dataFromFile];
        
        NSLog(@"%@", arrayFromFile);
        
    }
    return 0;
}
