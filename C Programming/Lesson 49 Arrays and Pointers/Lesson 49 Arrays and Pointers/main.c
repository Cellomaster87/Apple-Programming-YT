//
//  main.c
//  Lesson 49 Arrays and Pointers
//
//  Created by Michele Galvagno on 13/12/21.
//

#include <stdio.h>

// Arrays & pointers are one and the same thing

int main(int argc, const char * argv[]) {
    /*
    char c_a = 'a';
    char c_b = 'b';
    char *str = "Arrays are Pointers!"; // Length 21 including NULL character
    
    int a = 13;
    int b = 5;
    int c = 4;
     */
    int array[5] = {1, 2, 3, 4, 5};
    char *str = "Arrays are Pointers!"; // this was added later, copy-pasting from line 16
    
    /*
    puts("Ints:");
    printf("%p: %d\n", &a, a); // & gets the address of something, * gets the value at a certain address
    printf("%p: %d\n", &b, b);
    printf("%p: %d\n\n", &c, c);
     */
    
    puts("Array:");
    printf("%p\n", array); // array is already a pointer
    int *ptr = array; // get the address of the beginning of the array
    for (int i = 0; i < 5; i++) {
        printf("%p: %d\n", ptr, *ptr); // * goes to that address and figure out what value is there
        ptr++;
    }
    /// Pointer Arithmetic
    /// ++ for an Int will move by 4 bytes
    /// ++ for a Char will move the address by 1 byte
    
    /*
    puts("\nCharacters:");
    printf("%p: %d\n", &c_a, c_a);
    printf("%p: %d\n\n", &c_b, c_b);
     */
    
    puts("String:");
    printf("%p\n", str);
    char *c_ptr = str;
    for (int i = 0; i < 21; i++) {
        printf("%p: %d = %c\n", c_ptr, *c_ptr, *c_ptr);
        c_ptr++;
    }
        
    return 0;
}
