//
//  main.c
//  Lesson 13
//
//  Created by Michele Galvagno on 13/06/21.
//

// MARK: - Intro to Pointers
/* Make a variable that points to another variable
 If you change the pointer you also change the value of the other variable.
 The address in memory the pointer gets allows to send information to the other variable.
*/
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int *myPointer, myVar;
    /* 2 new operators:
     - `&` allows to get the address in memory of a variable.
     - `*` allows the value of the variable to be changed
     */
    
    myVar = 5;
    printf("myVar is now %d\n", myVar);
    
    /* The pointer needs to
     1) get the address of the variable it points to and
     2) it will also get a value that it can change.
     When we want to store an address, we use the &. Reads as "myPointer is getting the address of myVar"
     When we want to change the value at that address we put `*` in front.
     */
    myPointer = &myVar;
    *myPointer = 10;
    
    printf("myVar is now %d because myPointer is changing it\n", myVar);
    
    return 0;
}
