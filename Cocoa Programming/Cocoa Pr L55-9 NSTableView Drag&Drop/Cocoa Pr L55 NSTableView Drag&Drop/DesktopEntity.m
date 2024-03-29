//
//  DesktopEntity.m
//  Cocoa Pr L53 Groups
//
//  Created by Michele Galvagno on 17/05/22.
//

#import "DesktopEntity.h"

@implementation DesktopEntity

- (id)initWithFileURL:(NSURL *)fileURL {
    self = [super init];
    if (self) {
        _fileURL = fileURL;
    }
    return self;
}

+(DesktopEntity *)entityForURL:(NSURL *)url {
    NSString *typeIdentifier;
    if ([url getResourceValue:&typeIdentifier forKey:NSURLTypeIdentifierKey error:NULL]) {
        NSArray *imgTypes = [NSImage imageTypes];
        if ([imgTypes containsObject:typeIdentifier]) {
            return [[DesktopImageEntity alloc] initWithFileURL:url];
        } else if ([typeIdentifier isEqualToString:(NSString *)kUTTypeFolder]) {
            return [[DesktopFolderEntity alloc] initWithFileURL:url];
        }
    }
    return nil;
}

- (NSString *)name {
    NSString *name;
    if ([self.fileURL getResourceValue:&name forKey:NSURLLocalizedNameKey error:NULL]) {
        return name;
    }
    return nil;
}

@end

@implementation DesktopImageEntity

- (NSImage *)image {
    if (!_image) {
        _image = [[NSImage alloc] initByReferencingURL:self.fileURL];
    }
    return _image;
}

@end

@implementation DesktopFolderEntity



@end
