//
//  main.c
//  Lesson 33 Linked Lists
//  Lesson 34 (part 2)
//  Lesson 35 (part 3)
//
//  Created by Michele Galvagno on 28/11/21.
//

#include <stdio.h>
#include <stdlib.h>
// 4.
#include <string.h>
// 2.
#include "LinkedLists.h"

void removeReturn (char *);

int main(int argc, const char * argv[]) {
    // 3.
    struct Person *head, *tail, *curr;
    /*
     Head = points to the first thing
     Tail = points to the very last object
     Curr = changes as we go along
     */
    
    // We haven't created any memory to story our structs
    // 6.
    head = NULL;
    
    int i;
    for (i = 1; i <= 4; i++) {
        // Create memory to store. Size_t is the size of a block of memory that has to be created
        curr = malloc(sizeof(struct Person));
        printf("Enter your name: ");
        curr->num = i; // this has the address of the struct and can change it
        fgets(curr->name, kMaxLength, stdin); // we change the name
        removeReturn(curr->name);
        
        // 7. Get our head pointer to point to the first thing in the list
        if (head == NULL) {
            head = curr;
        } else {
            // we need a condition to make the tail.next point to the next structure
            tail->next = curr;
        }
        
        tail = curr;
        tail->next = NULL;
    }
    
    // 8.
    for (curr = head; curr != NULL; curr = curr->next) {
        printf("%d: ", curr->num);
        printf("%s\n", curr->name);
    }
    
    return 0;
}

// 5.
// MARK: - Function declarations
void removeReturn (char *name) {
    int length = strlen(name);
    name[length - 1] = '\0';
}
