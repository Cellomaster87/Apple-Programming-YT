//
//  main.c
//  Lesson 19 Intro to Input
//
//  Created by Michele Galvagno on 11/11/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /// #1
    int myInt;
    
    /// #2 The function to get input is scanf (it is one of them)
    /// In quotes, we need to tell what type of data we are expecting
    /// Then, after the comma, we need to show the location, the address of it
    /// We use the "Address of" operator (&) so that we can write to that location
    scanf("%d", &myInt);
    
    /// #3 We now want to print out what we stored
    printf("%d\n", myInt);
    
    /// If you input a number, a space and a number, it just cuts out the part after the first number
    
    return 0;
}
