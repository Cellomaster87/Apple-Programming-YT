//
//  main.c
//  Lesson 38 Typedef
//
//  Created by Michele Galvagno on 03/12/21.
//

#include <stdio.h>
// 2.
#include "typedef.h"

int main(int argc, const char * argv[]) {
    People sam;
    
    sam.age = 16;
    sam.height = 5.0;
    sam.weight = 400;
    
    printf("Sam weighs %f pounds\n", sam.weight);
    
    CoolInt num = 5;
    printf("%d\n", num);
    
    return 0;
}
