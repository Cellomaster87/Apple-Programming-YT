//
//  AppDelegate.m
//  Lesson 53
//
//  Created by Lucas Derraugh on 4/26/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import "AppDelegate.h"
#import "DesktopEntity.h"

@interface AppDelegate ()

@property NSMutableArray *tableContents;
@property NSRange objectRange;
@property NSArray *currentlyDraggedObjects;

@end

@implementation AppDelegate

NSString *const kGroupCellIdentifier = @"GroupCell";
NSString *const kImageCellIdentifier = @"ImageCell";

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    _tableContents = [[NSMutableArray alloc] init];
    NSString *path = @"/Users/michelegalvagno/Developer/_FailedProjects/Flags/PNG/40x30";
    NSURL *url = [NSURL fileURLWithPath:path];
    NSFileManager *fileManager = NSFileManager.defaultManager;
    NSDirectoryEnumerator *directoryEnum = [fileManager enumeratorAtURL:url
                                             includingPropertiesForKeys:nil
                                                                options:0
                                                           errorHandler:^BOOL(NSURL *url, NSError *error) {
                                                               return YES;
                                                           }];
    
    for (NSURL *fileURL in directoryEnum) {
        DesktopEntity *entity = [DesktopEntity entityForURL:fileURL];
        if ([entity isKindOfClass:[DesktopEntity class]]) {
            [self.tableContents addObject:entity];
        }
    }
    [self.tableView reloadData];
    [self.tableView registerForDraggedTypes:@[(id)kUTTypeFileURL]];
    [self.tableView setDraggingSourceOperationMask:NSDragOperationEvery forLocal:NO];
}

// MARK: - Table View Data Source methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.tableContents.count;
}

- (NSDictionary *)pasteboardReadingOptions {
    return @{NSPasteboardURLReadingFileURLsOnlyKey: @YES,
             NSPasteboardURLReadingContentsConformToTypesKey: [NSImage imageTypes]
    };
}

- (BOOL)containsAcceptableURLsFromPasteboard:(NSPasteboard *)pasteboard {
    return [pasteboard canReadObjectForClasses:@[[NSURL class] ] options:[self pasteboardReadingOptions]];
}

- (void)tableView:(NSTableView *)tableView draggingSession:(NSDraggingSession *)session willBeginAtPoint:(NSPoint)screenPoint forRowIndexes:(NSIndexSet *)rowIndexes {
    NSUInteger len = ([rowIndexes lastIndex] +1) - [rowIndexes firstIndex];
    _objectRange = NSMakeRange([rowIndexes firstIndex], len);
    _currentlyDraggedObjects = [_tableContents objectsAtIndexes:rowIndexes];
}

-(void)tableView:(NSTableView *)tableView draggingSession:(NSDraggingSession *)session endedAtPoint:(NSPoint)screenPoint operation:(NSDragOperation)operation {
    _objectRange = NSMakeRange(0, 0);
    _currentlyDraggedObjects = nil;
}

// Checks the item we're dragging
- (NSDragOperation)tableView:(NSTableView *)tableView validateDrop:(id<NSDraggingInfo>)info proposedRow:(NSInteger)row proposedDropOperation:(NSTableViewDropOperation)dropOperation {
    if (dropOperation == NSTableViewDropAbove && (_objectRange.location > row || _objectRange.length < row)) {
        if ([info draggingSource] == tableView) {
            // Reorder, implement later
            if ([info draggingSourceOperationMask] == NSDragOperationCopy) {
                info.animatesToDestination = YES;
                return NSDragOperationCopy;
            } else {
                return NSDragOperationMove;
            }
        } else {
            if ([self containsAcceptableURLsFromPasteboard:[info draggingPasteboard]]) {
                info.animatesToDestination = YES;
                return NSDragOperationCopy;
            }
        }
    }
    return NSDragOperationNone;
}

// Sorts out what items are valid for dragging
- (void)tableView:(NSTableView *)tableView updateDraggingItemsForDrag:(id<NSDraggingInfo>)draggingInfo {
    if ([draggingInfo draggingSource] != tableView) {
        NSArray *classes = @[[DesktopEntity class],[NSPasteboardItem class]];
        NSTableCellView *tableCellView = [tableView makeViewWithIdentifier:@"ImageCell" owner:self];
        // __block, this value sticks around outside of the block
        __block NSInteger validCount = 0;
        [draggingInfo enumerateDraggingItemsWithOptions:0 forView:tableView classes:classes searchOptions:nil usingBlock:^(NSDraggingItem * _Nonnull draggingItem, NSInteger idx, BOOL * _Nonnull stop) {
            if ([draggingItem.item isKindOfClass:[DesktopEntity class]]) {
                DesktopEntity *entity = (DesktopEntity *)draggingItem.item;
                draggingItem.draggingFrame = [tableCellView frame];
                draggingItem.imageComponentsProvider = ^NSArray<NSDraggingImageComponent *> * _Nonnull{
                    if ([entity isKindOfClass:[DesktopImageEntity class]]) {
                        [tableCellView.imageView setImage:[(DesktopImageEntity *)entity image]];
                    }
                    [tableCellView.textField setStringValue:entity.name];
                    return [tableCellView draggingImageComponents];
                };
                validCount++;
            } else {
                draggingItem.imageComponentsProvider = nil;
            }
        }];
        draggingInfo.numberOfValidItemsForDrop = validCount;
        draggingInfo.draggingFormation = NSDraggingFormationList;
    }
}

- (BOOL)tableView:(NSTableView *)tableView acceptDrop:(id<NSDraggingInfo>)info row:(NSInteger)row dropOperation:(NSTableViewDropOperation)dropOperation {
    if (_currentlyDraggedObjects == nil || [info draggingSourceOperationMask] == NSDragOperationCopy) {
        [self performInsertWithDragInfo:info row:row];
    } else {
        [tableView beginUpdates];
        [self performDragReorderWithDragInfo:info row:row];
        [tableView endUpdates];
    }
    return YES;
}

- (void)performDragReorderWithDragInfo:(id<NSDraggingInfo>)info row:(NSInteger)row {
    NSArray *classes = @[[DesktopEntity class]];
    [info enumerateDraggingItemsWithOptions:0 forView:_tableView classes:classes searchOptions:nil usingBlock:^(NSDraggingItem * _Nonnull draggingItem, NSInteger idx, BOOL * _Nonnull stop) {
        NSInteger newIndex = row + idx;
        DesktopEntity *entity = self->_currentlyDraggedObjects[idx];
        NSInteger oldIndex = [self->_tableContents indexOfObject:entity];
        if (oldIndex < newIndex) {
            newIndex -= (idx+1);
        }
        [self->_tableContents removeObjectAtIndex:oldIndex];
        [self->_tableContents insertObject:entity atIndex:newIndex];
        [self->_tableView moveRowAtIndex:oldIndex toIndex:newIndex];
    }];
}

- (void)performInsertWithDragInfo:(id<NSDraggingInfo>)info row:(NSInteger)row {
    NSArray *classes = @[[DesktopEntity class]];
    __block NSInteger insertionIndex = row;
    [info enumerateDraggingItemsWithOptions:0 forView:_tableView classes:classes searchOptions:nil usingBlock:^(NSDraggingItem * _Nonnull draggingItem, NSInteger idx, BOOL * _Nonnull stop) {
        DesktopEntity *entity = draggingItem.item;
        [self->_tableContents insertObject:entity atIndex:insertionIndex];
        [self->_tableView insertRowsAtIndexes:[NSIndexSet indexSetWithIndex:insertionIndex] withAnimation:NSTableViewAnimationEffectGap];
        draggingItem.draggingFrame = [self->_tableView frameOfCellAtColumn:0 row:insertionIndex];
        insertionIndex++;
    }];
}

// MARK: - Table View Delegate methods
- (id<NSPasteboardWriting>)tableView:(NSTableView *)tableView pasteboardWriterForRow:(NSInteger)row {
    return _tableContents[row];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    DesktopEntity *entity = self.tableContents[row];
    if ([entity isKindOfClass:[DesktopFolderEntity class]]) {
        NSTextField *groupCell = [tableView makeViewWithIdentifier:kGroupCellIdentifier owner:self];
        groupCell.stringValue = entity.name;
        return groupCell;
    } if ([entity isKindOfClass:[DesktopImageEntity class]]) {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:kImageCellIdentifier owner:self];
        cellView.textField.stringValue = entity.name;
        cellView.imageView.image = [(DesktopImageEntity *)entity image];
        return cellView;
    }
    return nil;
}

- (BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row {
    DesktopEntity *entity = self.tableContents[row];
    return [entity isKindOfClass:[DesktopFolderEntity class]];
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    DesktopEntity *entity = self.tableContents[row];
    return [entity isKindOfClass:[DesktopFolderEntity class]] ? 22 : tableView.rowHeight;
}

// MARK: - Button methods
// Inserting doesn't make much sense in our situtation (need a valid URL)
- (IBAction)insertNewRow:(id)sender {
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    [openPanel setAllowsMultipleSelection:YES];
    [openPanel setAllowedFileTypes:[NSImage imageTypes]];
    [openPanel beginSheetModalForWindow:self.window completionHandler:^(NSModalResponse result) {
        if (result == NSModalResponseOK) {
            NSInteger index = self.tableView.selectedRow + 1;
            NSArray *urls = [openPanel URLs];
            [self.tableView beginUpdates];
            for (NSURL *url in urls) {
                DesktopEntity *entity = [DesktopEntity entityForURL:url];
                if (entity) {
                    [self.tableContents insertObject:entity atIndex:index];
                    [self.tableView insertRowsAtIndexes:[NSIndexSet indexSetWithIndex:index] withAnimation:NSTableViewAnimationSlideDown];
                    index++;
                }
            }
            [self.tableView endUpdates];
            [self.tableView scrollRowToVisible:index];
        }
    }];
}

- (IBAction)removeSelectedRows:(id)sender {
    NSTableView *tableView = self.tableView;
    NSIndexSet *indexes = tableView.selectedRowIndexes;
    [self.tableContents removeObjectsAtIndexes:indexes];
    [tableView removeRowsAtIndexes:indexes withAnimation:NSTableViewAnimationSlideDown];
}

- (IBAction)locateInFinder:(id)sender {
    NSInteger selectedRow = [self.tableView rowForView:sender];
    DesktopEntity *entity = self.tableContents[selectedRow];
    [[NSWorkspace sharedWorkspace] selectFile:entity.fileURL.path inFileViewerRootedAtPath:@""];
}


@end
