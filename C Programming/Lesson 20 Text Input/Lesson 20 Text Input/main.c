//
//  main.c
//  Lesson 20 Text Input
//
//  Created by Michele Galvagno on 11/11/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /// 1. in C, a string is a character array. Let's create a 50 character array.
    char myArray[50];
    
    /// 2. We use %s for a string of text
    /// 3. When we use array we need to point to the 0th element, that is the 1st one
    scanf("%s", &myArray[0]); /// you can also write `myArray` and nothing else
    
    /// 4. now we print what we stored
    printf("%s\n", myArray);
    
    /// 5. Print a character from the array
    printf("%c\n", myArray[2]);
    
    /// 6. One of the downfalls of scanf is that it doesn't accept multiple words.
    /// As soon as it sees a whitespace it thinks it is done.
    
    return 0;
}
