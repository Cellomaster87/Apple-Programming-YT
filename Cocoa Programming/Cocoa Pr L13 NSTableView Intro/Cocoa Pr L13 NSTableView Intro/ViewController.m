//
//  ViewController.m
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
//

/**
 Not using the TableViewController separate class.
 Declaring *list in the .h file fails; set it up under the @implementation line
 list = [[NSMutableArray alloc] init] added in viewDidLoad
 */

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *list;

@end

@implementation ViewController

- (id)init
{
    if (self = [super init]) {
        _list = [NSMutableArray array];
    }
    return self;
}

// (1) Number of rows in table view
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_list count];
}

// (2) data for each row
- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    Person *p = [_list objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    
    return [p valueForKey:identifier];
}

// Table View Controller methods
- (IBAction)add:(id)sender {
    Person *person = [[Person alloc] init];
    [_list addObject:person];
    [_tableView reloadData];
}
@end
