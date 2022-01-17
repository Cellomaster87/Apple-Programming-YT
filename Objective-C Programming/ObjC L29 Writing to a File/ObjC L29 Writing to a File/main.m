//
//  main.m
//  ObjC L29 Writing to a File
//
//  Created by Michele Galvagno on 17/01/22.
//

// MARK: -
// How to write a file to disk and read it back

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *someText = @"Some text we want to save in a file";
        /*! There are different ways to access files
         Slash (/) is the top of our drive
         /Users/ would go to our users folder
         For the same location of where our program is, just write filename.fileextension or ./
         The parent directory ../
        */
        NSString *path = @"/Users/michelegalvagno/Downloads/myText.txt";
        
        /// - writeToFile: path of the file
        /// - atomically: it will create a temporary file before replacing the old one (usually say YES)
        /// - encoding:
        /// - error:
        [someText writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        NSString *newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        
        NSLog(@"%@", newText);
        
    }
    return 0;
}
