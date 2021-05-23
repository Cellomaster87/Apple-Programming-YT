//
//  main.c
//  Lesson 5
//
//  Created by Michele Galvagno on 23/05/21.
//

// MARK: - Variables

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int myInt = 6; // the integer variable "myInt" is being assigned (it is getting) the value of six.
    double myDouble = 4.5; // double sided decimal!
    
    // We cannot put directly "myInt" or "myDouble". You need a FORMAT SPECIFIER (%)
    printf("%d\n", myInt); // %d or %i is for integers
    printf("%f\n", myDouble); // %f stands for floating-point numbers
    
    return 0;
}
