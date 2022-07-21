//
//  CollectionViewItem.m
//  Cocoa Pr L68 ObjC
//
//  Created by Michele Galvagno on 14/07/22.
//

#import "CollectionViewItem.h"

@interface CollectionViewItem ()

@end

@implementation CollectionViewItem

// MARK: - Properties
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.identifier = @"CollectionViewItemReuseIdentifier";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
