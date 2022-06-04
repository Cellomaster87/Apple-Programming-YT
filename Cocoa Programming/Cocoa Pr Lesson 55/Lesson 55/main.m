//
//  main.m
//  Lesson 53
//
//  Created by Lucas Derraugh on 4/26/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
    return NSApplicationMain(argc, (const char **)argv);
}

/**
 Lesson 55
 1. Drag & Drop means working with NSPasteboardItem (something you copy and paste)
 2. DesktopEntity.h
    a. conform to NSPasteboardWriting protocol
 3. DesktopEntity.m
    a. implement the three required methods for the pasteboard writing protocol
 4. AppDelegate.m
    a. in applicationDidFinishLaunching, add the setDraggingSourceOperationMask at the end
    b. implement -tableView:pasteboardWriterForRow:
    c. modify the -insertNewRow: method
 
 Lesson 56
 1. Dragging from Finder > Photos into a table view
    a. validate the drop (drag operation)
    b. implement animation part
 2. AppDelegate.m
    a. register the table viewfor dragged types in -applicationDidFinishLaunching
 3. DesktopEntity.h, conform to NSPasteboardReading protocol
 4. DesktopEntity.m
    a. implement the instance method +readableTypesForPasteboard:
    b. implement the instance method +readingOptionsForType:pasteboard:
    c. implement the -initWithPasteboardPropertyList:ofType: method
 5. AppDelegate.m
    a. implement the  -tableView:validateDrop:proposedRow:proposedDropOperation:
    b. while doing that, create -containsAcceptableURLsFromPasteboard:
    c. create an (NSDictionary)pasteboardReadingOptions method and pass it as "options" parameter" to the method in step b.
    d. implement: -tableView:updateDraggingItemsForDrag:
 
 Lesson 57
 1. AppDelegate.m
    a. implement -tableView:acceptDrop:row:dropOperation:
    b. implement -tableView:acceptDrop:row:dropOperation:
    c. create -performInsertWithDragInfo:row:
 
 Lesson 58
 1. AppDelegate.m
    a. create two new properties, an NSRange and an NSArray
    b. implement -tableView:draggingSession:willBeginAtPoint:forRowIndexes:
    c. implement -tableView:draggingSession:endedAtPoint:operation:
    d. update -tableView:validateDrop:proposedRow:proposedDropOperation:
    e. update -tableView:acceptDrop:row:dropOperation:
    f. create -performDragReorderWithDragInfo:row:
 
 
 */
