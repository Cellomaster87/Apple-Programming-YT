//
//  LinkedLists.h
//  Lesson 33 Linked Lists
//
//  Created by Michele Galvagno on 28/11/21.
//

#ifndef LinkedLists_h
#define LinkedLists_h

// MARK: - Defines
#define kMaxLength 200

// MARK: - Structs
struct Person {
// 1.
    int num;
    char name[kMaxLength];
    struct Person *next; // point to another structure
};

#endif /* LinkedLists_h */
