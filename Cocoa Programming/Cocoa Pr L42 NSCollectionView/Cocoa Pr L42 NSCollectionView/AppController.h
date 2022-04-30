//
//  AppController.h
//  Cocoa Pr L42 NSCollectionView
//
//  Created by Michele Galvagno on 01/05/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject
@property IBOutlet NSArrayController *arrayController;
@property (strong) NSMutableArray *students;

@end

NS_ASSUME_NONNULL_END
