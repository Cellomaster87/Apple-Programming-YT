//
//  AppController.h
//  Cocoa Pr L41 Delegation
//
//  Created by Michele Galvagno on 29/04/22.
//

#import <Foundation/Foundation.h>
#import "SquareView.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject <SquareViewDelegate>
@property (weak) IBOutlet SquareView *squareView;

- (IBAction)changeSquareCount:(id)sender; 

@end

NS_ASSUME_NONNULL_END
