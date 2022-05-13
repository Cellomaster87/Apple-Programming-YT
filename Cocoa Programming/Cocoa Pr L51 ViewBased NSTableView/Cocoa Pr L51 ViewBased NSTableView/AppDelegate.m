//
//  AppDelegate.m
//  Cocoa Pr L51 ViewBased NSTableView
//
//  Created by Michele Galvagno on 13/05/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property NSMutableArray *tableContents;

@end

@implementation AppDelegate

/*
- (void)awakeFromNib {
    _tableContents = [[NSMutableArray alloc] init];
    NSString *path = @"/Users/michelegalvagno/Developer/Apple-Programming-YT/Cocoa Programming/Flags/Vector/svg";
    /// A convenient interface to the contents of the file system, and the primary means of interacting with it.
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *directoryEnum = [fileManager enumeratorAtPath:path];
    
    NSString *file;
    while (file = [directoryEnum nextObject]) {
        NSString *filePath = [path stringByAppendingFormat:@"/%@", file];
        NSDictionary *obj = @{@"image": [[NSImage alloc] initByReferencingFile:filePath],
                              @"name": [file stringByDeletingPathExtension]
        };
        [_tableContents addObject:obj];
    }
    [self.tableView reloadData];
}
 */

// MARK: - Fundamental App Management Code
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _tableContents = [[NSMutableArray alloc] init];
    NSString *path = @"/Users/michelegalvagno/Developer/Apple-Programming-YT/Cocoa Programming/Flags/PNG/40x30";
    
    // MARK: Debug 1
    NSLog(@"path found: %@", path); // the correct path gets printed, as expected
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *directoryEnum = [fileManager enumeratorAtPath:path];
    
    NSString *file;
    // MARK: Debug 2
    NSLog(@"Checking that file is empty: %@", file); // (null) gets printed, as expected
    
    // MARK: Debug 3
    if (file != directoryEnum.nextObject) {
        NSLog(@"File cannot be assigned to the Directory Enumerator");
    } else if (file == directoryEnum.nextObject) {
        NSLog(@"File properly assigned. Proceed!"); // this gets printed! Is it correct?
    } else {
        NSLog(@"Something went wrong during assignment of nextObject to file");
    }
    
    while (file = [directoryEnum nextObject]) {
        NSLog(@"While loop entered!"); // this doesn't get printed! Why?!
        
        // MARK: Debug 3
        NSLog(@"File: %@", file);
        NSString *filePath = [path stringByAppendingFormat:@"/%@", file];
        
        // MARK: Debug 4
        NSLog(@"Image filepath: %@", filePath);
        NSDictionary *obj = @{@"image": [[NSImage alloc] initByReferencingFile:filePath],
                              @"name": [file stringByDeletingPathExtension]};
        [self.tableContents addObject:obj];
    }
    [self.tableView reloadData];
    NSLog(@"Table View Reloaded"); // This gets printed!
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


// MARK: - Data Source and Delegate methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.tableContents count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSDictionary *flag = self.tableContents[row];
    NSString *identifier = tableColumn.identifier;
    if ([identifier isEqualToString:@"MainCell"]) {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"MainCell" owner:self];
        // a NSTableViewCell comes premade with outlets for the imageView and the textField
        [cellView.textField setStringValue:flag[@"name"]];
        [cellView.imageView setImage:flag[@"image"]];
        return cellView;
    } else {
        NSAssert1(NO, @"Unhandled table column identifier &@", identifier);
    }
    NSLog(@"Something went wrong!");
    return nil;
}

@end
