//
//  OutlineViewController.h
//  Cocoa Pr L49 NSOutlineView
//
//  Created by Michele Galvagno on 09/05/22.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface OutlineViewController : NSObject <NSOutlineViewDataSource>

@property (copy) NSMutableArray *people;
@property (weak) IBOutlet NSOutlineView *outlineView;

- (IBAction)add:(id)sender;
- (IBAction)remove:(id)sender;


@end

NS_ASSUME_NONNULL_END
