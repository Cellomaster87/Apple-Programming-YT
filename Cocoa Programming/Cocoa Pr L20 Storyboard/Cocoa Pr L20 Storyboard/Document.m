//
//  Document.m
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 13/04/22.
//

#import "Document.h"
#import "Assignment.h"

@interface Document ()

@end

@implementation Document

@synthesize assignments;

- (instancetype)init
{
    self = [super init];
    if (self) {
        id assignment = [[Assignment alloc] init];
        assignments = [[NSMutableArray alloc] initWithObjects:assignment, nil];
    }
    return self;
}

+ (BOOL)autosavesInPlace {
    return YES;
}


- (void)makeWindowControllers {
    // Override to return the Storyboard file name of the document.
    
    NSWindowController *wc = [[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:@"Document Window Controller"];
    NSViewController *vc = wc.contentViewController;
    vc.representedObject = self.assignments;
    
    [self addWindowController:wc];
    
}


- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error if you return nil.
    // Alternatively, you could remove this method and override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return nil;
}


- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error if you return NO.
    // Alternatively, you could remove this method and override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you do, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return YES;
}


@end
