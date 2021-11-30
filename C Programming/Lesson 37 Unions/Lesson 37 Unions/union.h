//
//  union.h
//  Lesson 37 Unions
//
//  Created by Michele Galvagno on 30/11/21.
//

#ifndef union_h
#define union_h

// 8.
struct People {
    int age;
    float height;
    // 10. paste inside and add an `n` variable.
    union FavoriteNumber { // 11. change the name
        int myInt;
        double myDouble;
        float myFloat;
    } n;
    
};

/*
 Structs give different variables in a set
 Unions is shared memory. Creates enough memory to hold the largest value, but it can hold only one value at a time.
 You usually do not create unions by themselves, rather you put them inside a struct.
 */

/* 9. comment out the union before pasting
union Number {
    int myInt;
    double myDouble;
    float myFloat;
};
 */

#endif /* union_h */
