//
//  CollectionViewController.m
//  Cocoa Pr L68 ObjC
//
//  Created by Michele Galvagno on 14/07/22.
//

#import "CollectionViewController.h"
#import "CollectionViewItem.h"

@interface CollectionViewController ()
@property (weak) IBOutlet NSCollectionView *collectionView;
@property NSCollectionViewItem *collectionViewItem;

@end

@implementation CollectionViewController
@synthesize collectionView;
@synthesize collectionViewItem;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    collectionViewItem = [[CollectionViewItem alloc] init];
    NSLog(@"This is the reuse identifier: %@", collectionViewItem.identifier);
    
    [collectionView registerClass:[NSCollectionViewItem class] forItemWithIdentifier:collectionViewItem.identifier];
    
    [collectionView setCollectionViewLayout:self.listLayout];
}

// MARK: - Layout methods
- (NSCollectionViewLayout *)listLayout {
    NSCollectionLayoutSize *itemSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.0]];
    NSCollectionLayoutItem *item = [NSCollectionLayoutItem itemWithLayoutSize:itemSize];
    [item setContentInsets:NSDirectionalEdgeInsetsMake(5, 5, 5, 5)];
    
    NSCollectionLayoutSize *groupSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension absoluteDimension:40]];
    NSCollectionLayoutGroup *group = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:groupSize subitems:@[item]];
    
    NSCollectionLayoutSection *section = [NSCollectionLayoutSection sectionWithGroup:group];
    NSCollectionViewCompositionalLayout *layout = [[NSCollectionViewCompositionalLayout alloc] initWithSection:section];
    
    return layout;
}

// MARK: - NSCollectionViewDataSource methods
- (NSInteger)numberOfSectionsInCollectionView:(NSCollectionView *)collectionView {
    return 3;
}

- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (NSCollectionViewItem *)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Nib name for represented object: %@", self.collectionViewItem.identifier);
    NSCollectionViewItem *item = [collectionView makeItemWithIdentifier: self.collectionViewItem.identifier forIndexPath:indexPath];
    [item.textField setStringValue:[NSString stringWithFormat:@"%ld, %ld", indexPath.section, indexPath.item]];
    
    return item;
}

@end

/**
 
 
 */
