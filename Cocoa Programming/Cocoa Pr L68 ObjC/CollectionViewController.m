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
    
    [collectionView registerClass:[CollectionViewItem class] forItemWithIdentifier:collectionViewItem.identifier];
    
    [collectionView setCollectionViewLayout:self.bidirectionalLayout];
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

- (NSCollectionViewLayout *)gridLayout {
    NSCollectionLayoutSize *itemSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.0]];
    NSCollectionLayoutItem *item = [NSCollectionLayoutItem itemWithLayoutSize:itemSize];
    [item setContentInsets:NSDirectionalEdgeInsetsMake(5, 5, 5, 5)];
    
    NSCollectionLayoutSize *groupSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension fractionalWidthDimension:0.2]];
    NSCollectionLayoutGroup *group = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:groupSize subitem:item count:3];
    
    NSCollectionLayoutSection *section = [NSCollectionLayoutSection sectionWithGroup:group];
    NSCollectionViewCompositionalLayout *layout = [[NSCollectionViewCompositionalLayout alloc] initWithSection:section];
    
    return layout;
}

- (NSCollectionViewLayout *)varyingSectionsLayout {
    NSCollectionViewCompositionalLayout *layout = [[NSCollectionViewCompositionalLayout alloc] initWithSectionProvider:^NSCollectionLayoutSection * _Nullable(NSInteger sectionIndex, id<NSCollectionLayoutEnvironment> _Nonnull layoutEnvironment) {
        NSInteger columns = (sectionIndex * 2) + 1;
        
        NSCollectionLayoutSize *itemSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.0]];
        NSCollectionLayoutItem *item = [NSCollectionLayoutItem itemWithLayoutSize:itemSize];
        [item setContentInsets:NSDirectionalEdgeInsetsMake(2, 2, 2, 2)];
        
        NSCollectionLayoutDimension *groupHeight = columns == 1 ? [NSCollectionLayoutDimension absoluteDimension:44] : [NSCollectionLayoutDimension fractionalWidthDimension:0.2];
        NSCollectionLayoutSize *groupSize = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:groupHeight];
        NSCollectionLayoutGroup *group = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:groupSize subitem:item count:columns];
        
        NSCollectionLayoutSection *section = [NSCollectionLayoutSection sectionWithGroup:group];
        [section setContentInsets:NSDirectionalEdgeInsetsMake(20, 20, 20, 20)];
        
        return section;
    }];
    return layout;
}

- (NSCollectionViewLayout *)bidirectionalLayout {
    NSCollectionLayoutItem *leadingItem = [NSCollectionLayoutItem itemWithLayoutSize:[NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:0.7] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.0]]];
    [leadingItem setContentInsets:NSDirectionalEdgeInsetsMake(10, 10, 10, 10)];
    
    NSCollectionLayoutItem *trailingItem = [NSCollectionLayoutItem itemWithLayoutSize:[NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1.0] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:0.3]]];
    [trailingItem setContentInsets:NSDirectionalEdgeInsetsMake(10, 10, 10, 10)];
    
    NSCollectionLayoutGroup *trailingGroup = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:[NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:0.3] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.0]] subitem:trailingItem count:2];
    
    NSCollectionLayoutGroup *containerGroup = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:[NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalHeightDimension:1.4] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:0.5]] subitems:@[leadingItem, trailingGroup]];
    
    NSCollectionLayoutSection *section = [NSCollectionLayoutSection sectionWithGroup:containerGroup];
    [section setOrthogonalScrollingBehavior:NSCollectionLayoutSectionOrthogonalScrollingBehaviorContinuous];
    
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
    NSCollectionViewItem *item = [collectionView makeItemWithIdentifier: self.collectionViewItem.identifier forIndexPath:indexPath];
    [item.textField setStringValue:[NSString stringWithFormat:@"%ld, %ld", indexPath.section, indexPath.item]];
    
    return item;
}

@synthesize container;

@end

/**
 
 
 */
