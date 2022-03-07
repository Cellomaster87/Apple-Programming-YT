//
//  ViewController.h
//  Cocoa Pr L4 Making Connections
//
//  Created by Michele Galvagno on 07/03/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
    IBOutlet NSTextField *label;
}

// id: any object sending a message
- (IBAction)sayHello:(id)sender;


@end

