//
//  main.c
//  Lesson 50 Dynamic Memory Allocation
//
//  Created by Michele Galvagno on 14/12/21.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct person {
    char *name;
    int age;
};

/// Stack vs Heap example
void add() {
    int a = 9;
    int b = 4;
    printf("%d", a + b);
}

/*
 Once created, the memory gets freed. The Stack frame is pushed off, it's gone. Everything on the stack is a physical object and it is getting copied to be passed around. To persist something longer than a function call, then you want to allocate it on the heap.
 */

// this is basically an initialiser
struct person *createPerson(const char *name, int age) {
    struct person *p = malloc(sizeof(struct person)); // function you want to use to create anything on the heap
    // set the block in space, accessing the age property. Go to the address where p is located and access its age property
    p->age = age;
    p->name = malloc(sizeof(strlen(name)+1)); //+1 to include the \0 character at the end
    strcpy(p->name, name); // while loop that goes through the characters in name.
    
    return p;
}

void printPerson(struct person *p) {
    printf("%s is %d years old.\n", p->name, p->age);
}

void freePerson(struct person *p) {
    // This is the correct order for freeing objects
    free(p->name);
    free(p);
}


int main(int argc, const char * argv[]) {
    /* Stack example
     struct person p;
     p.age = 20;
     add();
     */
    struct person *p1 = createPerson("Yoda", 900);
    struct person *p2 = createPerson("Michele", 34);
    printPerson(p1);
    printPerson(p2);
    freePerson(p1);
    freePerson(p2);
    
    return 0;
}
