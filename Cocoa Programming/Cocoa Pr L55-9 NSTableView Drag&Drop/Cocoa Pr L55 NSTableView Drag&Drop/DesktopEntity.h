//
//  DesktopEntity.h
//  Cocoa Pr L53 Groups
//
//  Created by Michele Galvagno on 17/05/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface DesktopEntity : NSObject

@property (strong, nonatomic) NSURL *fileURL;
@property (strong, readonly) NSString *name;

- (id)initWithFileURL:(NSURL *)fileURL;
+ (DesktopEntity *)entityForURL:(NSURL *)url;

@end

@interface DesktopImageEntity : DesktopEntity

@property (strong, nonatomic) NSImage * image;

@end

@interface DesktopFolderEntity : DesktopEntity

@end

NS_ASSUME_NONNULL_END
