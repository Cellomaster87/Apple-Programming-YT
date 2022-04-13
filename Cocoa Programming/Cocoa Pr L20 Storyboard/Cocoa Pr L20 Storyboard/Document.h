//
//  Document.h
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 13/04/22.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument {
    NSMutableArray *assignments;
}

@property (copy) NSMutableArray *assignments;


@end

