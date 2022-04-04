//
//  TableViewController.m
//  Cocoa Pr L13-15b
//
//  Created by Michele Galvagno on 04/04/22.
//

#import "TableViewController.h"
#import "Person.h"

@implementation TableViewController

NSMutableArray *list;
@synthesize tableView;

- (instancetype)init
{
    self = [super init];
    if (self) {
        list = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [list count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    Person *p = [list objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    
    return [p valueForKey:identifier];
}

- (IBAction)add:(id)sender {
    [list addObject:[[Person alloc] init]];
    [tableView reloadData];
}
@end
