//
//  main.c
//  Lesson 8
//
//  Created by Michele Galvagno on 08/06/21.
//


// MARK: - Lesson 8: Booleans & Logical Operators
// Booleans store true or false values

#include <stdio.h>
#include <stdbool.h> // to allow Booleans in the program

int main(int argc, const char * argv[]) {
    bool haveMoney;
    bool wantCoffee;
    
    haveMoney = false;
    wantCoffee = false;
    
    if (haveMoney && wantCoffee) { // no need to compare Booleans
        printf("We will buy a coffee\n");
    }
    else if (haveMoney || wantCoffee) {
        printf("Maybe get a coffee\n");
    }
    else if (!haveMoney && !wantCoffee) {
        printf("We will not buy a coffee\n");
    }
    
    return 0;
}
