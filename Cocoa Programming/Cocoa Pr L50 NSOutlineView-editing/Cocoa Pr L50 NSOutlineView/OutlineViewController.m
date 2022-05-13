//
//  OutlineViewController.m
//  Cocoa Pr L49 NSOutlineView
//
//  Created by Michele Galvagno on 09/05/22.
//

#import "OutlineViewController.h"

@implementation OutlineViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _people = [[NSMutableArray alloc] init];
        
        Person *boss = [[Person alloc] initWithName:@"Yoda" age:900];
        
        [boss addChild:[[Person alloc] initWithName:@"Stephan" age: 20]];
        [boss addChild:[[Person alloc] initWithName:@"Taylor" age: 18]];
        [boss addChild:[[Person alloc] initWithName:@"Jesse" age: 19]];
        
        [(Person *)[boss.children objectAtIndex:0] addChild:[[Person alloc] initWithName:@"Lucas" age:18]];
        
        [_people addObject:boss];
    }
    return self;
}

#pragma mark NSOutlineView Data Source Methods
- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item {
    // asks for the number of children at a specific item
    return !item ? [self.people count] : [[item children] count];
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item {
    // whether we can expand an item. We can if there are children
    return !item ? YES : [[item children] count] != 0;
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item {
    // asks for the specific child at a specific index. To display things from an array
    // item represents the top-level object
    return !item ? [self.people objectAtIndex:index] : [[item children] objectAtIndex:index];
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    // we're going to have the name of the person in the first column
    // and the age in the second column
    if ([[tableColumn identifier] isEqualToString:@"name"]) {
        return [item name];
    } else if ([[tableColumn identifier] isEqualToString:@"age"]) {
        // we have to return an object, not a number
        return @([item age]);
    }
    return @"Nobody's Here!";
}

- (void)outlineView:(NSOutlineView *)outlineView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    if ([[tableColumn identifier] isEqualToString:@"name"]) {
        [(Person *)item setName:object];
    } if ([[tableColumn identifier] isEqualToString:@"age"]) {
        [item setAge:[object intValue]];
    }
}

// MARK: - Interface methods
- (IBAction)remove:(id)sender {
    Person *p = [self.outlineView itemAtRow:[self.outlineView selectedRow]];
    Person *parent = [self.outlineView parentForItem:p];
    
    if (parent) {
        [parent removeChild:p];
    } else if (p) {
        [self.people removeObject:p];
    }
    [self.outlineView reloadData];
}

- (IBAction)add:(id)sender {
    Person *p = [self.outlineView itemAtRow:[self.outlineView selectedRow]];
    
    if (p) {
        [p addChild:[[Person alloc] init]];
    } else {
        [self.people addObject:[[Person alloc] init]];
    }
    
    [self.outlineView reloadData];
}
@end
