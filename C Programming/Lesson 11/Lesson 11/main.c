//
//  main.c
//  Lesson 11
//
//  Created by Michele Galvagno on 10/06/21.
//

// MARK: - Lesson 11: Function parameter
#include <stdio.h>

// Function prototype (declaration)
// Sending information that we are not going to return -> void return type.
void MakeStars(int stars);

int main(int argc, const char * argv[]) {
    // Variable scope
    int myInt = 30; // this variable is available only inside of the `main` function
    MakeStars(myInt); // no need to write again the parameter name, `myInt` is called argument
    
    return 0;
}

// Definition
void MakeStars(int stars) {
    int i;
    for (i = 1; i <= stars; i++) {
        printf("*");
    }
    printf("\n");
}

