//
//  AppController.m
//  Cocoa Pr L33 Alert Sheet
//
//  Created by Michele Galvagno on 21/04/22.
//

#import "AppController.h"
#import "AppDelegate.h"

@implementation AppController

- (IBAction)activateSheet:(id)sender {
//    NSBeginAlertSheet(@"This is an alert",
//                      @"OK",
//                      @"Cancel",
//                      @"Other Button",
//                      [(AppDelegate *)[NSApp delegate] window],
//                      self,
//                      @selector(sheetDidEnd:resultCode:contextInfo:),
//                      NULL,
//                      NULL,
//                      @"This is the message for the alert");
    
    NSAlert *alert;
    alert = [[NSAlert alloc] init];
    
    [alert setAlertStyle:NSAlertStyleCritical];
    [alert setMessageText:@"This is a standard alert"];
    [alert setInformativeText:@"It does nothing extraordinary, but like so many alerts, it wants to be confirmed"];
    
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"Cancel"];
    [alert addButtonWithTitle:@"Other Button"];
    [alert showsSuppressionButton];
    [[alert suppressionButton] setTitle:@"I'm bored. Go away"];
    
    [alert setShowsHelp:YES];
    
    [alert beginSheetModalForWindow:[(AppDelegate *)[NSApp delegate] window] completionHandler:NULL];
    
    /*
    NSModalResponse result = [alert runModal];
    switch (result) {
            
        case NSAlertFirstButtonReturn :
            NSLog(@"First (and usyally default) button");
            break;
        case NSAlertSecondButtonReturn :
            NSLog(@"Second (frequently cancel) button");
        case NSAlertThirdButtonReturn :
            NSLog(@"Third button, (often the dangerous one: Don't save");
             
        case NSModalResponseOK :
            NSLog(@"OK");
        case NSModalResponseCancel :
            NSLog(@"Cancelled");
            
        default:
            NSLog(@"There is no provision for further buttons");
            break;
    }
    */
}
//
//- (void)sheetDidEnd:(NSWindow *)sheet resultCode:(NSInteger)resultCode contextInfo:(void *)contextInfo {
//    if (resultCode == NSAlertDefaultReturn) {
//        NSLog(@"OK");
//    }
//}

@end
