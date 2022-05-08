//
//  Document.h
//  Cocoa Pr L48 PrintingIntroDocument
//
//  Created by Michele Galvagno on 08/05/22.
//

#import <Cocoa/Cocoa.h>
#import "CoolView.h"

@interface Document : NSDocument
@property (weak) IBOutlet CoolView *coolView;


@end

