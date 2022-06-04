//
//  AppDelegate.m
//  Cocoa Pr L60 QuickLookPreviewPanel
//
//  Created by Michele Galvagno on 03/06/22.
//

#import "AppDelegate.h"
#import <Quartz/Quartz.h>
#import "QuickLookTableView.h"

@interface AppDelegate () <NSTableViewDataSource, NSTableViewDelegate, QuickLookTableViewDelegate, QLPreviewPanelDataSource, QLPreviewPanelDelegate>
@property (nonatomic, weak) IBOutlet NSTableView *tableView;

@property (nonatomic, copy) NSArray *files;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSURL *homeFolder = [NSURL fileURLWithPath:[@"~" stringByExpandingTildeInPath]];
    NSFileManager *manager = [NSFileManager defaultManager];
    self.files = [manager contentsOfDirectoryAtURL:homeFolder includingPropertiesForKeys:[NSArray arrayWithObject:NSURLNameKey] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    [self.tableView reloadData];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// MARK: - TableView Data Source methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    NSLog(@"File count: %lu", (unsigned long)_files.count);
    return [self.files count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:self];
    [cell.textField setStringValue:self.files[row]];
    return cell;
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    if ([self.tableView isEqualTo:[notification object]]) {
        if ([QLPreviewPanel sharedPreviewPanelExists] && [[QLPreviewPanel sharedPreviewPanel] isVisible]) {
            [[QLPreviewPanel sharedPreviewPanel] reloadData];
        }
    }
}

// MARK: - Custom methods
- (void)didPressSpacebarForTableView:(nonnull NSTableView *)tableView {
    if ([QLPreviewPanel sharedPreviewPanelExists] && [[QLPreviewPanel sharedPreviewPanel] isVisible]) {
        [[QLPreviewPanel sharedPreviewPanel] orderOut:nil];
    } else {
        [[QLPreviewPanel sharedPreviewPanel] makeKeyAndOrderFront:nil];
        [[QLPreviewPanel sharedPreviewPanel] reloadData];
    }
}

// MARK: - QLPreviewPanelDataSource delegate methods
- (NSInteger)numberOfPreviewItemsInPreviewPanel:(QLPreviewPanel *)panel {
    return [[self.files objectsAtIndexes:[self.tableView selectedRowIndexes]] count];
}

- (id<QLPreviewItem>)previewPanel:(QLPreviewPanel *)panel previewItemAtIndex:(NSInteger)index {
    return [self.files objectsAtIndexes:[self.tableView selectedRowIndexes]] [index];
}

// MARK: - Preview Panel methods
- (BOOL)acceptsPreviewPanelControl:(QLPreviewPanel *)panel {
    return YES;
}

- (void)beginPreviewPanelControl:(QLPreviewPanel *)panel {
    panel.dataSource = self;
    panel.delegate = self;
}

- (void)endPreviewPanelControl:(QLPreviewPanel *)panel {
    panel.dataSource = nil;
    panel.delegate = nil;
}

- (BOOL)previewPanel:(QLPreviewPanel *)panel handleEvent:(NSEvent *)event {
    if ([event type] == NSEventTypeKeyDown) {
        [self.tableView keyDown:event];
        return YES;
    }
    return NO;
}

@end
