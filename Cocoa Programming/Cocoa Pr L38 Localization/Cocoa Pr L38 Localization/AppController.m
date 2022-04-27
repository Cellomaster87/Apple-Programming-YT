//
//  AppController.m
//  Cocoa Pr L38 Localization
//
//  Created by Michele Galvagno on 27/04/22.
//

#import "AppController.h"

@implementation AppController

- (IBAction)activateAlert:(id)sender {
    int num = 6;
    [[NSAlert alertWithMessageText:NSLocalizedString(@"Message", @"This is a message") defaultButton:NSLocalizedString(@"Yes", @"Yes") alternateButton:NSLocalizedString(@"No", @"No") otherButton:nil informativeTextWithFormat:NSLocalizedString(@"Info text", @"We are adding %d files to this folder"), num] runModal];
}

@end
