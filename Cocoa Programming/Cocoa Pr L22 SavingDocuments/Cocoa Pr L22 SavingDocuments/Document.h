//
//  Document.h
//  Cocoa Pr L21 ReferenceCounting
//
//  Created by Michele Galvagno on 13/04/22.
//

#import <Cocoa/Cocoa.h>

// assignments conforms to NSCoding 
@interface Document : NSDocument {
    NSMutableArray *assignments;
}

@property (copy) NSMutableArray *assignments;


@end

