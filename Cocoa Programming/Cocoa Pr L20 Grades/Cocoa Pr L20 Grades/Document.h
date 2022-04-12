//
//  Document.h
//  Cocoa Pr L20 Grades
//
//  Created by Michele Galvagno on 12/04/22.
//

#import <Cocoa/Cocoa.h>

/**
 You can save data, make data, reload data
 */

@interface Document : NSDocument {
    NSMutableArray *assignments;
}

@property (copy) NSMutableArray *assignments;


@end

