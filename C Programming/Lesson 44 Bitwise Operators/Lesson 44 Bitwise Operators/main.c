//
//  main.c
//  Lesson 44 Bitwise Operators
//
//  Created by Michele Galvagno on 06/12/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int canCopy = 1; // 00000001
    int canMove = 2; // 00000010
    // aggiunto dopo
    int canDelete = 4; // 00000100
    
    int options = canCopy | canMove; // 00000011
    
    // int draggedObject = canCopy; // works also if it is = to canMove
    int draggedObject = canDelete;
    
    if (draggedObject & options) {
        printf("Object success\n");
    } else {
        printf("Fail\n");
    }
    
    return 0;
}


