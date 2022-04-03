//
//  TableViewConroller.h
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewConroller : NSObject {
    IBOutlet NSTableView *tableView;
    NSMutableArray *list;
}

@end

NS_ASSUME_NONNULL_END
