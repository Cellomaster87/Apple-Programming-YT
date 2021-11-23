//
//  main.c
//  Lesson 32 Structs
//
//  Created by Michele Galvagno on 23/11/21.
//

#include <stdio.h>
#include "structTut.h"

int main(int argc, const char * argv[]) {
    struct HockeyPlayer bob; // we create a struct that conforms to the HockeyPlayer type and we call it bob
    
    bob.shirtNumber = 20;
    bob.rank = 5;
    
    printf("Bob's number is %d and he is ranked %dth\n", bob.shirtNumber, bob.rank);
    
    return 0;
}
