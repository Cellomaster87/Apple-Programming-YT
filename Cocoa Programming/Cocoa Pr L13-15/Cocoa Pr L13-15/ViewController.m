//
//  ViewController.m
//  Cocoa Pr L13-15
//
//  Created by Michele Galvagno on 04/04/22.
//

#import "ViewController.h"
#import "Person.h"

@implementation ViewController

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

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
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
    NSLog(@"Added object successfully!");
    
    [tableView reloadData];
}

@end
