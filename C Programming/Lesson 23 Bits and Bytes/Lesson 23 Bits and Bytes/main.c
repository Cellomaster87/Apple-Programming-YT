//
//  main.c
//  Lesson 23 Bits and Bytes
//
//  Created by Michele Galvagno on 15/11/21.
//

// What is the size of type?
// One character is 1 byte big; every bit holds ON/OFF positions
// 2 to the 8 is 256, and that is the total number of characters we can have (-128 to 127)
// 2 to the (x-1) will give me the maximum negative number and the maximum positive number+1

#include <stdio.h>

int main(int argc, const char * argv[]) {
    char myChar = /*500*/ 128;
    // when I try 128 it jumps back to -128.
    // trying 255 gives -1 (why?). As soon as it hits the maximum positive number it goes back until it hits the lowest negative numbers and it climbs back up again!
    // This gives you the size of the character, how many it can hold.
    
    printf("%d\n", myChar);
    
    // return 0;
}
