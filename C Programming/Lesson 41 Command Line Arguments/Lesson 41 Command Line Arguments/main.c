//
//  main.c
//  Lesson 41 Command Line Arguments
//
//  Created by Michele Galvagno on 04/12/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // We would like to pass some values to our methods
    // argc = argument count, which is the amount of arguments we pass to our main method
    // * argv[] = array of string values. The first argument is always the path of our program.
    // const = constant, not a modifiable value.
    
    // Error checking
    if (argc < 3) {
        // we don't have enough arguments
        printf("You need 2 arguments\n");
        return -1; // it's not going to run
    }
    
    // Check what the value of the file path is
    printf("%s\n", argv[0]);
    
    // Print two passed arguments
    printf("%s is the %s Jedi ever!\n", argv[1], argv[2]);
    
    return 0;
}

/*
 Product menu > Scheme > Edit Scheme > Run > Arguments
 Add arguments
 Run
 */

/*
 Open Terminal
 cd + drag folder
 gcc main.c -o prog
 ./prog + due argomenti
 */
