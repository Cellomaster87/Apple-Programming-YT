//
//  TableViewController.h
//  Cocoa Pr L13-15b
//
//  Created by Michele Galvagno on 04/04/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : NSObject <NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)add:(id)sender;
- (IBAction)remove:(id)sender;


@end

NS_ASSUME_NONNULL_END
