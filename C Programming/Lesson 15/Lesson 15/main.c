//
//  main.c
//  Lesson 15
//
//  Created by Michele Galvagno on 13/06/21.
//

// MARK: - Characters
/*
 They are the symbols on our keyboard.
 It uses the `char` keyword and it holds a very small number range.
 One needs to use the ' character to assign a letter to the variable.
 This is not actually a character itself, rather a specific number.
 Every character has a numerical value in ASCII.
 
 Any letter minus 32 will give us its capitalized version
 */

#include <stdio.h>

int main(int argc, const char * argv[]) {
    char c;
    c = 'j' - 32; // also 106 - 32
    printf("%c\n", c);
    
    return 0;
}
