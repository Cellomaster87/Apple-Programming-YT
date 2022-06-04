//
//  AppDelegate.m
//  Cocoa Pr L53 Groups
//
//  Created by Michele Galvagno on 17/05/22.
//

#import "AppDelegate.h"
#import "DesktopEntity.h"

@interface AppDelegate ()

@property NSMutableArray *tableContents;

@end

@implementation AppDelegate

NSString *const kGroupCellIdentifier = @"GroupCell";
NSString *const kImageCellIdentifier = @"ImageCell";

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    _tableContents = [[NSMutableArray alloc] init];
    NSString *path = @"/Users/michelegalvagno/Developer/_FailedProjects/Flags/PNG/40x30";
//    NSLog(@"Path accessed");
    NSURL *url = [NSURL fileURLWithPath:path];
    NSFileManager *fileManager = NSFileManager.defaultManager;
    NSDirectoryEnumerator *directoryEnum = [fileManager enumeratorAtURL:url
                                             includingPropertiesForKeys:nil
                                                                options:0
                                                           errorHandler:^BOOL(NSURL *url, NSError *error) {
                                                               return YES;
                                                           }];
    NSLog(@"Directory enumeration created. Objects count: %lu", directoryEnum.allObjects.count);
    
    for (NSURL *fileURL in directoryEnum) {
        DesktopEntity *entity = [DesktopEntity entityForURL:fileURL];
        if ([entity isKindOfClass:[DesktopEntity class]]) {
            [self.tableContents addObject:entity];
        }
    }
    NSLog(@"Table Objects count: %lu", (unsigned long)self.tableContents.count);
    [self.tableView reloadData];
//    NSLog(@"Table view reloaded");
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.tableContents.count;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    DesktopEntity *entity = self.tableContents[row];
    if ([entity isKindOfClass:[DesktopFolderEntity class]]) {
        NSTextField *groupCell = [tableView makeViewWithIdentifier:kGroupCellIdentifier owner:self];
        groupCell.stringValue = entity.name;
        NSLog(@"Group cell configured");
        return groupCell;
    } if ([entity isKindOfClass:[DesktopImageEntity class]]) {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:kImageCellIdentifier owner:self];
        cellView.textField.stringValue = entity.name;
        cellView.imageView.image = [(DesktopImageEntity *)entity image];
        NSLog(@"Cell View configured");
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

// Inserting doesn't make much sense in our situation (need a valid URL)
- (IBAction)insertNewRow:(id)sender {
    NSTableView *tableView = self.tableView;
    NSInteger index = tableView.selectedRow + 1;
    
    self.tableContents[index] = @{@"name": @"Temp Row Name"};
    [tableView beginUpdates];
    [tableView insertRowsAtIndexes:[NSIndexSet indexSetWithIndex:index] withAnimation:NSTableViewAnimationSlideDown];
    [tableView scrollRowToVisible:index];
    [tableView endUpdates];
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
