//
//  main.c
//  Lesson 37 Unions
//
//  Created by Michele Galvagno on 30/11/21.
//

#include <stdio.h>
// 1.
#include "union.h"

int main(int argc, const char * argv[]) {
    /* 12. comment out the union and the num. assignments
    // 2.
    union Number num;
     
    
    // 3.
    num.myInt = 5;
    num.myFloat = 6.89;
    // 6.
    num.myInt = 7;
     */
    
    /*
     // 4.
     printf("%d\n", num.myInt); // it returns 1088191201, which means that myInt cannot be accessed
     
     // 5.
     printf("%f\n", num.myFloat); // this time it would work
     
     // 7.
     printf("%d\n", num.myInt); // this time it would work as well
     */
    
    // 13.
    struct People person;
    
    person.age = 16;
    person.height = 120;
    person.n.myInt = 5;
    
    printf("%d\n", person.age);
    printf("%f\n", person.height);
    printf("%d\n", person.n.myInt);
    
    
    
    return 0;
}
