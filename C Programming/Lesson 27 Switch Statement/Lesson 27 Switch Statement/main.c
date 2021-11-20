//
//  main.c
//  Lesson 27 Switch Statement
//
//  Created by Michele Galvagno on 20/11/21.
//

// We can use a character or an integer, which makes it weaker than if

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 1. create a character
    char key = 'q';
    
    // 2. create a switch statement
    /*
     expression: is the value you are testing for, in our case 'key'
     You need to always add break
     */
    switch (key) {
        case 'q':
            printf("Key is q\n");
            break;
            /* it knows it has to get out of the switch statement.
             Without it, it would just fallthrough.
             */
        case 'n':
            printf("Key is n\n");
            break;
        // fallback case if nothing else happens
        default:
            printf("Key is an invalid command\n");
            break;
    }
    return 0;
}
