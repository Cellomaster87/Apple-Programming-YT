//
//  QuickLookTableView.h
//  Cocoa Pr L60 QuickLookPreviewPanel
//
//  Created by Michele Galvagno on 03/06/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@protocol QuickLookTableViewDelegate <NSObject>
@required
- (void)didPressSpacebarForTableView:(NSTableView *)tableView;

@end

@interface QuickLookTableView : NSTableView

@property (nonatomic, weak) IBOutlet id<QuickLookTableViewDelegate> qlDelegate;

@end

NS_ASSUME_NONNULL_END
