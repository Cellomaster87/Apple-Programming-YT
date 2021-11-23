//
//  main.c
//  Lesson 31 Multidimensional Arrays
//
//  Created by Michele Galvagno on 23/11/21.
//

#include <stdio.h>
#include "ArrayTut.h"

int main(int argc, const char * argv[]) {
    // char s[20]; // 1.
    //char s[5] [20]; // 2. five containers of twenty characters
    
    // 3.
    char mag[kNumMagazines][kMaxName];
    fgets(mag[0], kMaxName, stdin);
    printf("%s\n", mag[0]);
    
    return 0;
}
