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

@end

@implementation AppDelegate

NSString *const kGroupCellIdentifier = @"GroupCell";
NSString *const kImageCellIdentifier = @"ImageCell";

- (NSMutableArray *)tableContents {
    if (_tableContents) return _tableContents;
    
    _tableContents = [[NSMutableArray alloc] init];
    NSString *path = @"/Users/michelegalvagno/Developer/_FailedProjects/Flags/PNG/40x30";
    NSURL *url = [NSURL fileURLWithPath:path];
    NSFileManager *fileManager = NSFileManager.defaultManager;
    NSDirectoryEnumerator *dirEnum = [fileManager enumeratorAtURL:url
                                             includingPropertiesForKeys:nil
                                                                options:0
                                                           errorHandler:^BOOL(NSURL *url, NSError *error) {
                                                               return YES;
                                                           }];
    
    for (NSURL *fileURL in dirEnum) {
        NSNumber *isDir;
        [fileURL getResourceValue:&isDir forKey:NSURLIsDirectoryKey error:NULL];
        if ([isDir isEqualToNumber:@NO]) {
            DesktopEntity *entity = [[DesktopEntity alloc] initWithFileURL:fileURL];
            [_tableContents addObject:entity];
        }
    }
    return _tableContents;
}

- (IBAction)locateInFinder:(id)sender {
    NSInteger selectedRow = [self.tableView rowForView:sender];
    DesktopEntity *entity = self.tableContents[selectedRow];
    [[NSWorkspace sharedWorkspace] activateFileViewerSelectingURLs:@[entity.fileURL]];
}


@end
