//
//  AppDelegate.m
//  Cocoa Pr L45 SearchingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property NSPredicate *searchPredicate;

@end

@implementation AppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        _people = [[NSMutableArray alloc] init];
        _searchPredicate = [NSPredicate predicateWithFormat:@"(name contains[cd] $value) or (age == $value.intValue)"];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_tableView setSortDescriptors:@[
        [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(caseInsensitiveCompare:)],
        [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES]
    ]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}
- (IBAction)changePredicate:(id)sender {
    NSString *string = [sender stringValue]; // this stores the value of the search field
    NSPredicate *predicate = nil; // this is a template predicate
    if (![string isEqualToString:@""]) {
        NSDictionary *dictionary = @{@"value" : string};
        predicate = [_searchPredicate predicateWithSubstitutionVariables:dictionary];
    }
    [_arrayController setFilterPredicate:predicate];
}


@end
