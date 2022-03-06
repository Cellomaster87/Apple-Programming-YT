//
//  main.m
//  Xcode Tips L6 Edit Menu
//
//  Created by Michele Galvagno on 06/03/22.
//

/*!
 In Xcode 13 most of the Edit menu functionalities are not in the Editor menu
 Cmd-[ (Cmd-Opt-è) to outdent, Cmd-] (Cmd-Opt-+) to indent
 Find is not in the Find Navigator to the left
 Bookmarks seem gone
 Go to Line is now Jump to Line (Cmd-L) in the Navigate menu
 Cycle through the alternatives via Ctrl-period seems gone
 Ctrl-slash seems replaced by the Tab
 
 Edit All in Scope is in the Editor menu
 Insert Text Macro are now the Snippets Library (?)
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *myName = [NSMutableString stringWithString:@"John"];
        NSLog(@"%@", myName);
        
        [myName appendString:@" Bob"];
        NSLog(@"%@", myName);
        
        if (<#condition#>) {
            <#statements#>
        }
    }
    return 0;
}
